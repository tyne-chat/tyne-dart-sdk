import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fluxer_dart/channels/channels_api.dart';
import 'package:fluxer_dart/models/indicate_typing_request_schema.dart';
import 'package:fluxer_dart/models/json_nullable.dart';
import 'package:fluxer_dart/models/message_persona_request_schema.dart';
import 'package:test/test.dart';

void main() {
  group('ChannelsApi', () {
    test('indicateTyping sends POST request with persona body', () async {
      RequestOptions? capturedRequest;
      final dio = Dio();
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            capturedRequest = options;
            return handler.resolve(
              Response<void>(requestOptions: options, statusCode: 204),
            );
          },
        ),
      );

      final api = ChannelsApi(dio, baseUrl: 'https://api.example.com');
      await api.indicateTyping(
        channelId: '123456',
        body: IndicateTypingRequestSchema(
          subprofile: JsonNullable<MessagePersonaRequestSchema>.of(
            MessagePersonaRequestSchema(id: 'persona_xyz', name: 'Alice'),
          ),
        ),
      );

      expect(capturedRequest, isNotNull);
      expect(capturedRequest!.method, 'POST');
      expect(capturedRequest!.path, '/channels/123456/typing');
      expect(
        capturedRequest!.uri.toString(),
        'https://api.example.com/channels/123456/typing',
      );
      expect(jsonDecode(jsonEncode(capturedRequest!.data)), <String, dynamic>{
        'subprofile': <String, dynamic>{'id': 'persona_xyz', 'name': 'Alice'},
      });
    });

    test('indicateTyping sends POST request without body', () async {
      RequestOptions? capturedRequest;
      final dio = Dio();
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            capturedRequest = options;
            return handler.resolve(
              Response<void>(requestOptions: options, statusCode: 204),
            );
          },
        ),
      );

      final api = ChannelsApi(dio, baseUrl: 'https://api.example.com');
      await api.indicateTyping(channelId: '123456');

      expect(capturedRequest, isNotNull);
      expect(capturedRequest!.method, 'POST');
      expect(capturedRequest!.path, '/channels/123456/typing');
      expect(
        capturedRequest!.uri.toString(),
        'https://api.example.com/channels/123456/typing',
      );
      expect(capturedRequest!.data, <String, dynamic>{});
    });
  });
}
