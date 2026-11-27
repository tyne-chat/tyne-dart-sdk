import 'package:fluxer_dart/gateway_client/gateway_connection.dart';
import 'package:fluxer_dart/gateway_client/gateway_models.dart';
import 'package:test/test.dart';

import 'fake_gateway_socket.dart';

void main() {
  late FakeGateway gateway;

  setUp(() {
    gateway = FakeGateway(jitter: 0.5);
  });

  tearDown(() async {
    await gateway.connection.dispose();
  });

  Future<void> expectReportedAndReconnecting(String frame) async {
    await gateway.connectReady();
    final List<Object> eventErrors = <Object>[];
    final subscription = gateway.connection.events.listen(
      (_) {},
      onError: eventErrors.add,
    );
    addTearDown(subscription.cancel);

    gateway.socket.serverSendRaw(frame);

    await waitFor(() => gateway.connection.state == GatewayState.reconnecting);
    expect(eventErrors, hasLength(1));
  }

  test('a small malformed frame is reported and reconnects', () async {
    await expectReportedAndReconnecting('{"op": 0, "t": "MESSAGE_CREATE"');
  });

  test(
    'a frame without an integer opcode is reported and reconnects',
    () async {
      await expectReportedAndReconnecting('{"op": "zero", "d": null}');
    },
  );

  test('a large malformed frame parsed on a worker is reported', () async {
    await expectReportedAndReconnecting(
      '{"op": 0, "t": "READY", "d": "${'x' * kGatewayWorkerFrameBytes}"',
    );
  });
}
