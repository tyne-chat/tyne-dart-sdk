import 'dart:convert';
import 'dart:isolate';
import 'dart:typed_data';

import 'package:dio/dio.dart';

import 'package:fluxer_dart/models/channel_pins_response.dart';
import 'package:fluxer_dart/models/global_search_messages_request.dart';
import 'package:fluxer_dart/models/guild_member_response.dart';
import 'package:fluxer_dart/models/guild_member_search_request.dart';
import 'package:fluxer_dart/models/guild_member_search_response.dart';
import 'package:fluxer_dart/models/message_response_schema.dart';
import 'package:fluxer_dart/models/message_search_response.dart';

const String kWorkerParserExtraKey = 'fluxer.workerParser';

const int kWorkerParseThresholdBytes = 16 * 1024;

typedef WorkerResponseParser = Object? Function(Object? json);

final Converter<List<int>, Object?> _utf8JsonDecoder = utf8.decoder.fuse(
  json.decoder,
);

class WorkerParsingTransformer extends FusedTransformer {
  WorkerParsingTransformer({
    this.workerThresholdBytes = kWorkerParseThresholdBytes,
    super.contentLengthIsolateThreshold = 50 * 1024,
  });

  final int workerThresholdBytes;

  @override
  Future<dynamic> transformResponse(
    RequestOptions options,
    ResponseBody responseBody,
  ) async {
    final Object? parser = options.extra[kWorkerParserExtraKey];
    final int status = responseBody.statusCode;
    if (parser is! WorkerResponseParser ||
        options.responseType != ResponseType.json ||
        status < 200 ||
        status >= 300) {
      return super.transformResponse(options, responseBody);
    }
    final Uint8List bytes = await _readBytes(responseBody.stream);
    if (bytes.isEmpty) {
      return null;
    }
    if (bytes.length < workerThresholdBytes) {
      return parser(_utf8JsonDecoder.convert(bytes));
    }
    return _decodeAndParseOnWorker(parser, bytes);
  }
}

Future<Object?> _decodeAndParseOnWorker(
  WorkerResponseParser parser,
  Uint8List bytes,
) => Isolate.run(
  () => parser(_utf8JsonDecoder.convert(bytes)),
  debugName: 'rest-parse',
);

Future<Uint8List> _readBytes(Stream<Uint8List> stream) async {
  final BytesBuilder builder = BytesBuilder(copy: false);
  await for (final Uint8List chunk in stream) {
    builder.add(chunk);
  }
  return builder.takeBytes();
}

List<MessageResponseSchema> parseMessageList(Object? json) => [
  for (final Object? item in json! as List<Object?>)
    MessageResponseSchema.fromJson(item! as Map<String, dynamic>),
];

List<GuildMemberResponse> parseGuildMemberList(Object? json) => [
  for (final Object? item in json! as List<Object?>)
    GuildMemberResponse.fromJson(item! as Map<String, dynamic>),
];

GuildMemberSearchResponse parseGuildMemberSearch(Object? json) =>
    GuildMemberSearchResponse.fromJson(json! as Map<String, Object?>);

typedef MessageSearchOutcome = ({
  bool indexing,
  MessageSearchResponseMessageSearchResultsResponse? results,
});

MessageSearchOutcome parseMessageSearch(Object? json) {
  final Map<String, dynamic> map = json! as Map<String, dynamic>;
  if (map['indexing'] == true) {
    return (indexing: true, results: null);
  }
  return (
    indexing: false,
    results: MessageSearchResponseMessageSearchResultsResponse.fromJson(map),
  );
}

ChannelPinsResponse parseChannelPins(Object? json) =>
    ChannelPinsResponse.fromJson(json! as Map<String, Object?>);

class FluxerWorkerApi {
  FluxerWorkerApi(this._dio, {this.baseUrl});

  final Dio _dio;

  final String? baseUrl;

  Future<List<MessageResponseSchema>> listMessages({
    required String channelId,
    String? before,
    String? after,
    String? around,
    String? limit = '50',
  }) => _fetch(
    'GET',
    '/channels/$channelId/messages',
    parseMessageList,
    queryParameters: <String, dynamic>{
      'before': before,
      'after': after,
      'around': around,
      'limit': limit,
    },
  );

  Future<List<GuildMemberResponse>> listGuildMembers({
    required String guildId,
    String? after,
    int? limit = 1,
  }) => _fetch(
    'GET',
    '/guilds/$guildId/members',
    parseGuildMemberList,
    queryParameters: <String, dynamic>{'after': after, 'limit': limit},
  );

  Future<GuildMemberSearchResponse> searchGuildMembers({
    required String guildId,
    GuildMemberSearchRequest? body,
  }) => _fetch(
    'POST',
    '/guilds/$guildId/members-search',
    parseGuildMemberSearch,
    data: <String, dynamic>{...?body?.toJson()},
  );

  Future<MessageSearchOutcome> searchMessages({
    GlobalSearchMessagesRequest? body,
  }) => _fetch(
    'POST',
    '/search/messages',
    parseMessageSearch,
    data: <String, dynamic>{...?body?.toJson()},
  );

  Future<ChannelPinsResponse> listPinnedMessages({
    required String channelId,
    int? limit,
    String? before,
  }) => _fetch(
    'GET',
    '/channels/$channelId/messages/pins',
    parseChannelPins,
    queryParameters: <String, dynamic>{'limit': limit, 'before': before},
  );

  Future<T> _fetch<T>(
    String method,
    String path,
    T Function(Object? json) parser, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
  }) async {
    final Map<String, dynamic> query = <String, dynamic>{...?queryParameters}
      ..removeWhere((String key, Object? value) => value == null);
    final RequestOptions options =
        Options(
              method: method,
              extra: <String, dynamic>{kWorkerParserExtraKey: parser},
            )
            .compose(_dio.options, path, queryParameters: query, data: data)
            .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl));
    final Response<Object?> response = await _dio.fetch<Object?>(options);
    final Object? body = response.data;
    if (body is T) {
      return body;
    }
    return parser(body);
  }

  String _combineBaseUrls(String dioBaseUrl) {
    final String? override = baseUrl;
    if (override == null || override.trim().isEmpty) {
      return dioBaseUrl;
    }
    final Uri url = Uri.parse(override);
    if (url.isAbsolute) {
      return url.toString();
    }
    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
