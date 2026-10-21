// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_message_fetch_request_requests.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkMessageFetchRequestRequests _$BulkMessageFetchRequestRequestsFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BulkMessageFetchRequestRequests', json, ($checkedConvert) {
  final val = BulkMessageFetchRequestRequests(
    channelId: $checkedConvert('channel_id', (v) => v as SnowflakeType? ?? ''),
    limit: $checkedConvert('limit', (v) => (v as num?)?.toInt() ?? 0),
    before: $checkedConvert('before', (v) => v as SnowflakeType?),
    after: $checkedConvert('after', (v) => v as SnowflakeType?),
    around: $checkedConvert('around', (v) => v as SnowflakeType?),
  );
  return val;
}, fieldKeyMap: const {'channelId': 'channel_id'});

Map<String, dynamic> _$BulkMessageFetchRequestRequestsToJson(
  BulkMessageFetchRequestRequests instance,
) => <String, dynamic>{
  'channel_id': instance.channelId,
  'limit': instance.limit,
  'before': ?instance.before,
  'after': ?instance.after,
  'around': ?instance.around,
};
