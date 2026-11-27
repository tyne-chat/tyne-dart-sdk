import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:fluxer_dart/channels/channels_api.dart';
import 'package:fluxer_dart/guilds/guilds_api.dart';
import 'package:fluxer_dart/models/global_search_messages_request.dart';
import 'package:fluxer_dart/search/search_api.dart';
import 'package:fluxer_dart/models/guild_member_search_request.dart';
import 'package:fluxer_dart/models/message_response_schema.dart';
import 'package:fluxer_dart/rest.dart';
import 'package:test/test.dart';

class _StubAdapter implements HttpClientAdapter {
  _StubAdapter(this.statusCode, this.body);

  final int statusCode;
  final String body;
  final List<RequestOptions> requests = <RequestOptions>[];

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    requests.add(options);
    return ResponseBody.fromString(
      body,
      statusCode,
      headers: {
        Headers.contentTypeHeader: [Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

Map<String, Object?> _message(String id, {String content = 'hi'}) => {
  'id': id,
  'channel_id': '200',
  'author': {'id': '100', 'username': 'u', 'discriminator': '0001'},
  'type': 0,
  'flags': 0,
  'content': content,
  'timestamp': '2026-01-01T00:00:00.000Z',
  'pinned': false,
  'mention_everyone': false,
  'tts': false,
  'mentions': <Object?>[],
  'mention_roles': <String>[],
};

Map<String, Object?> _member(String id) => {
  'user': {'id': id, 'username': 'u$id', 'discriminator': '0001'},
  'roles': <String>[],
  'joined_at': '2026-01-01T00:00:00.000Z',
  'mute': false,
  'deaf': false,
};

Dio _dio(_StubAdapter adapter, {bool transformer = true}) {
  final Dio dio = Dio(BaseOptions(baseUrl: 'https://api.test/v1'))
    ..httpClientAdapter = adapter;
  if (transformer) {
    dio.transformer = WorkerParsingTransformer();
  }
  return dio;
}

void expectSameRequest(RequestOptions a, RequestOptions b) {
  expect(a.method, b.method);
  expect(a.uri, b.uri);
  expect(a.data, b.data);
}

void main() {
  test('listMessages sends the same request as the generated client', () async {
    final _StubAdapter adapter = _StubAdapter(200, jsonEncode([_message('1')]));
    final Dio dio = _dio(adapter);
    await ChannelsApi(
      dio,
    ).listMessages(channelId: '200', before: '9', limit: '25');
    await FluxerWorkerApi(
      dio,
    ).listMessages(channelId: '200', before: '9', limit: '25');
    expectSameRequest(adapter.requests[0], adapter.requests[1]);
  });

  test(
    'listGuildMembers sends the same request as the generated client',
    () async {
      final _StubAdapter adapter = _StubAdapter(
        200,
        jsonEncode([_member('1')]),
      );
      final Dio dio = _dio(adapter);
      await GuildsApi(
        dio,
      ).listGuildMembers(guildId: '300', after: '5', limit: 100);
      await FluxerWorkerApi(
        dio,
      ).listGuildMembers(guildId: '300', after: '5', limit: 100);
      expectSameRequest(adapter.requests[0], adapter.requests[1]);
    },
  );

  test(
    'searchGuildMembers sends the same body as the generated client',
    () async {
      final _StubAdapter adapter = _StubAdapter(
        200,
        jsonEncode({
          'guild_id': '300',
          'members': <Object?>[],
          'page_result_count': 0,
          'total_result_count': 0,
          'indexing': false,
        }),
      );
      final Dio dio = _dio(adapter);
      const GuildMemberSearchRequest request = GuildMemberSearchRequest(
        query: 'ab',
        limit: 10,
      );
      await GuildsApi(dio).searchGuildMembers(guildId: '300', body: request);
      await FluxerWorkerApi(
        dio,
      ).searchGuildMembers(guildId: '300', body: request);
      expectSameRequest(adapter.requests[0], adapter.requests[1]);
    },
  );

  test(
    'listPinnedMessages sends the same request as the generated client',
    () async {
      final _StubAdapter adapter = _StubAdapter(
        200,
        jsonEncode({'items': <Object?>[], 'has_more': false}),
      );
      final Dio dio = _dio(adapter);
      await ChannelsApi(
        dio,
      ).listPinnedMessages(channelId: '200', limit: 10, before: '9');
      await FluxerWorkerApi(
        dio,
      ).listPinnedMessages(channelId: '200', limit: 10, before: '9');
      expectSameRequest(adapter.requests[0], adapter.requests[1]);
    },
  );

  test(
    'searchMessages parses results and sends the generated request',
    () async {
      final _StubAdapter adapter = _StubAdapter(
        200,
        jsonEncode({
          'messages': <Object?>[],
          'channels': <Object?>[],
          'total': 3,
          'hits_per_page': 25,
          'page': 1,
        }),
      );
      final Dio dio = _dio(adapter);
      const GlobalSearchMessagesRequest request = GlobalSearchMessagesRequest(
        content: 'hello',
      );
      await SearchApi(dio).searchMessages(body: request);
      final MessageSearchOutcome outcome = await FluxerWorkerApi(
        dio,
      ).searchMessages(body: request);
      expectSameRequest(adapter.requests[0], adapter.requests[1]);
      expect(outcome.indexing, isFalse);
      expect(outcome.results?.total, 3);
    },
  );

  test('searchMessages reports indexing without results', () async {
    final MessageSearchOutcome outcome = await FluxerWorkerApi(
      _dio(_StubAdapter(200, jsonEncode({'indexing': true}))),
    ).searchMessages();
    expect(outcome.indexing, isTrue);
    expect(outcome.results, isNull);
  });

  test('a large page is parsed on a worker into typed messages', () async {
    final List<Map<String, Object?>> page = <Map<String, Object?>>[
      for (var i = 0; i < 50; i++) _message('$i', content: 'x' * 500),
    ];
    final String body = jsonEncode(page);
    expect(utf8.encode(body).length, greaterThan(kWorkerParseThresholdBytes));
    final List<MessageResponseSchema> messages = await FluxerWorkerApi(
      _dio(_StubAdapter(200, body)),
    ).listMessages(channelId: '200');
    expect(messages.map((m) => m.id), [for (var i = 0; i < 50; i++) '$i']);
  });

  test('parses inline when the transformer is not installed', () async {
    final List<MessageResponseSchema> messages = await FluxerWorkerApi(
      _dio(_StubAdapter(200, jsonEncode([_message('7')])), transformer: false),
    ).listMessages(channelId: '200');
    expect(messages.single.id, '7');
  });

  test('error bodies stay decoded JSON maps for interceptors', () async {
    await expectLater(
      FluxerWorkerApi(
        _dio(_StubAdapter(403, jsonEncode({'code': 'MISSING_ACCESS'}))),
      ).listMessages(channelId: '200'),
      throwsA(
        isA<DioException>().having(
          (DioException e) => e.response?.data,
          'data',
          {'code': 'MISSING_ACCESS'},
        ),
      ),
    );
  });

  test('a malformed page surfaces as a DioException', () async {
    final String body = jsonEncode([
      for (var i = 0; i < 50; i++)
        {..._message('$i', content: 'x' * 500), 'id': i},
    ]);
    await expectLater(
      FluxerWorkerApi(
        _dio(_StubAdapter(200, body)),
      ).listMessages(channelId: '200'),
      throwsA(isA<DioException>()),
    );
  });
}
