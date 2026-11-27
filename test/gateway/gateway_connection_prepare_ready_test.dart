import 'dart:async';
import 'dart:isolate';

import 'package:fluxer_dart/gateway_client/gateway_connection.dart';
import 'package:fluxer_dart/gateway_client/gateway_event.dart';
import 'package:fluxer_dart/gateway_client/gateway_opcodes.dart';
import 'package:test/test.dart';

import 'fake_gateway_socket.dart';

Object? _sessionIdPreparer(ReadyEvent ready) => 'prepared:${ready.sessionId}';

Object? _throwingPreparer(ReadyEvent ready) => throw StateError('boom');

Object? _unsendablePreparer(ReadyEvent ready) => ReceivePort();

Map<String, Object?> _ready({required bool large}) => <String, Object?>{
  'op': GatewayOpcodes.dispatch,
  't': 'READY',
  's': 1,
  'd': <String, Object?>{
    'session_id': 'session-1',
    'user': <String, Object?>{'id': '1', 'username': 'u'},
    if (large) 'padding': 'x' * kGatewayWorkerFrameBytes,
  },
};

Future<ReadyEvent> _receiveReady(
  GatewayReadyPreparer preparer, {
  required bool large,
}) async {
  final FakeGateway gateway = FakeGateway(prepareReady: preparer);
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
  return ready.future.timeout(const Duration(seconds: 8));
}

void main() {
  test('a small READY carries the prepared value', () async {
    final ReadyEvent ready = await _receiveReady(
      _sessionIdPreparer,
      large: false,
    );
    expect(ready.prepared, 'prepared:session-1');
  });

  test('a large READY is prepared on the worker', () async {
    final ReadyEvent ready = await _receiveReady(
      _sessionIdPreparer,
      large: true,
    );
    expect(ready.prepared, 'prepared:session-1');
    expect(ready.sessionId, 'session-1');
  });

  test('a throwing preparer still delivers READY unprepared', () async {
    final ReadyEvent ready = await _receiveReady(
      _throwingPreparer,
      large: true,
    );
    expect(ready.prepared, isNull);
  });

  test(
    'an unsendable prepared value falls back to an unprepared READY',
    () async {
      final ReadyEvent ready = await _receiveReady(
        _unsendablePreparer,
        large: true,
      );
      expect(ready.prepared, isNull);
      expect(ready.sessionId, 'session-1');
    },
  );
}
