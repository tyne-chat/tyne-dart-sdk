// Fork: reports what the gateway parser skips (tyne-chat/tyne#193).
//
// The parser drops list items and embedded objects it cannot parse, so that
// one bad field costs a single member, role or channel instead of the whole
// event. Upstream drops them silently; in October 2026 that hid, for days,
// that READY lost the user's own guild member for accounts with a reply
// mention preference set. Each place that skips something calls [report]; the
// app sets [onSkipped] to log it. Statics are per isolate: a parse in a
// background isolate reports there, so the app collects and forwards those.

typedef ForkGatewayParseSkipHandler =
    void Function(String skipped, Object error);

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
}
