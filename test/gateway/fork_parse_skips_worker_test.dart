import 'dart:async';
import 'dart:isolate';

import 'package:fluxer_dart/gateway_client/fork_parse_skips.dart';
import 'package:fluxer_dart/gateway_client/gateway_connection.dart';
import 'package:fluxer_dart/gateway_client/gateway_event.dart';
import 'package:fluxer_dart/gateway_client/gateway_opcodes.dart';
import 'package:test/test.dart';

import 'fake_gateway_socket.dart';

// Fork: what the parser skips in a frame decoded on the worker isolate is
// reported again in the isolate that set ForkGatewayParseSkips.onSkipped,
// where the app logs it (tyne-chat/tyne#957). Kept apart from upstream's
// connection tests so they stay as upstream has them.

Object? _unsendablePreparer(ReadyEvent ready) => ReceivePort();

Map<String, Object?> _member(String id, {String joinedAt = '2026-01-01'}) =>
    <String, Object?>{
      'user': <String, Object?>{
        'id': id,
        'username': 'user-$id',
        'discriminator': '0001',
      },
      'roles': <String>[],
      'joined_at': joinedAt,
    };

Map<String, Object?> _ready({required bool large}) => <String, Object?>{
  'op': GatewayOpcodes.dispatch,
  't': 'READY',
  's': 1,
  'd': <String, Object?>{
    'session_id': 'session-1',
    'user': <String, Object?>{'id': '1', 'username': 'u'},
    'guilds': <Object?>[
      <String, Object?>{
        'id': 'g1',
        'properties': <String, Object?>{
          'id': 'g1',
          'name': 'Guild g1',
          'owner_id': '100',
        },
        'channels': <Object?>[],
        'members': <Object?>[
          _member('1'),
          _member('2', joinedAt: 'not a date'),
        ],
        'roles': <Object?>[],
        'emojis': <Object?>[],
        'stickers': <Object?>[],
      },
      <String, Object?>{'id': 'g2', 'properties': 'not a guild'},
    ],
    if (large) 'padding': 'x' * kGatewayWorkerFrameBytes,
  },
};

const List<String> _expectedSkips = <String>[
  'GuildMemberResponse',
  'READY GuildCreateData',
];

Future<(ReadyEvent, List<String>)> _receiveReady({
  required bool large,
  GatewayReadyPreparer? prepareReady,
}) async {
  final List<String> skips = <String>[];
  ForkGatewayParseSkips.onSkipped = (String skipped, Object error) =>
      skips.add(skipped);
  addTearDown(() => ForkGatewayParseSkips.onSkipped = null);
  final FakeGateway gateway = FakeGateway(prepareReady: prepareReady);
  addTearDown(gateway.connection.dispose);
  final Completer<ReadyEvent> ready = Completer<ReadyEvent>();
  final StreamSubscription<GatewayEvent> sub = gateway.connection.events.listen(
    (GatewayEvent event) {
      if (event is ReadyEvent && !ready.isCompleted) {
        ready.complete(event);
      }
    },
  );
  addTearDown(sub.cancel);
  await gateway.connection.connect();
  gateway.socket
    ..hello()
    ..serverSend(_ready(large: large));
  return (await ready.future.timeout(const Duration(seconds: 8)), skips);
}

void main() {
  test('skips in a small frame are reported once', () async {
    final (ReadyEvent ready, List<String> skips) = await _receiveReady(
      large: false,
    );
    expect(ready.guilds.map((g) => g.guild.id), <String>['g1']);
    expect(skips, _expectedSkips);
  });

  test(
    'skips in a large frame are reported here, not lost on the worker',
    () async {
      final (ReadyEvent ready, List<String> skips) = await _receiveReady(
        large: true,
      );
      expect(ready.guilds.map((g) => g.guild.id), <String>['g1']);
      expect(ready.unavailableGuilds.map((g) => g.id), <String>['g2']);
      expect(skips, _expectedSkips);
    },
  );

  test('a worker decode that falls back reports its skips once', () async {
    final (ReadyEvent ready, List<String> skips) = await _receiveReady(
      large: true,
      prepareReady: _unsendablePreparer,
    );
    expect(ready.prepared, isNull);
    expect(skips, _expectedSkips);
  });
}
