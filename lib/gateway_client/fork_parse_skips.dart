// Fork: reports what the gateway parser skips (tyne-chat/tyne#193).
//
// The parser drops list items and embedded objects it cannot parse, so that
// one bad field costs a single member, role or channel instead of the whole
// event. Upstream drops them silently; in October 2026 that hid, for days,
// that READY lost the user's own guild member for accounts with a reply
// mention preference set. Each place that skips something calls [report]; the
// app sets [onSkipped] to log it. Statics are per isolate: a parse in a
// background isolate reports there, where [onSkipped] is not set, so code
// that parses gateway data in another isolate goes through
// [ForkGatewayParseSkips.isolateRun], which reports those skips again in the
// calling isolate (tyne-chat/tyne#957).

import 'dart:async';
import 'dart:isolate';

typedef ForkGatewayParseSkipHandler =
    void Function(String skipped, Object error);

/// A skip recorded in another isolate. The error is kept as text: not every
/// error object can be sent back.
typedef ForkGatewayParseSkip = ({String skipped, String error});

typedef _ForkRecorded<R> = ({R result, List<ForkGatewayParseSkip> skips});

abstract final class ForkGatewayParseSkips {
  /// Called with what was skipped and why. Null, the default, keeps
  /// upstream's silence.
  static ForkGatewayParseSkipHandler? onSkipped;

  /// Reports that the parser skipped [skipped] because of [error].
  static void report(String skipped, Object error) {
    final ForkGatewayParseSkipHandler? handler = onSkipped;
    if (handler == null) {
      return;
    }
    try {
      handler(skipped, error);
    } on Object {
      // A failing log must not break parsing.
    }
  }

  /// [Isolate.run], reporting here what [computation] skipped in the new
  /// isolate. If the run fails, nothing is reported: a caller that retries
  /// reports the retry's skips once.
  static Future<R> isolateRun<R>(
    FutureOr<R> Function() computation, {
    String? debugName,
  }) => Isolate.run(
    _recordingIn<R>(computation),
    debugName: debugName,
  ).then(_reportAgain<R>);

  // Built outside any async function, so the closure sent to the new isolate
  // holds [computation] and nothing else.
  static Future<_ForkRecorded<R>> Function() _recordingIn<R>(
    FutureOr<R> Function() computation,
  ) =>
      () => _recording<R>(computation);

  static Future<_ForkRecorded<R>> _recording<R>(
    FutureOr<R> Function() computation,
  ) async {
    final List<ForkGatewayParseSkip> skips = <ForkGatewayParseSkip>[];
    final ForkGatewayParseSkipHandler? previous = onSkipped;
    onSkipped = (String skipped, Object error) =>
        skips.add((skipped: skipped, error: '$error'));
    try {
      return (result: await computation(), skips: skips);
    } finally {
      onSkipped = previous;
    }
  }

  static R _reportAgain<R>(_ForkRecorded<R> recorded) {
    for (final ForkGatewayParseSkip skip in recorded.skips) {
      report(skip.skipped, skip.error);
    }
    return recorded.result;
  }
}
