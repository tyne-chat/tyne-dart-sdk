// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_state_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReadStateResponse _$ReadStateResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ReadStateResponse',
      json,
      ($checkedConvert) {
        final val = ReadStateResponse(
          id: $checkedConvert('id', (v) => v as SnowflakeStringType? ?? ''),
          mentionCount: $checkedConvert(
            'mention_count',
            (v) => (v as num?)?.toInt() ?? 0,
          ),
          lastMessageId: $checkedConvert(
            'last_message_id',
            (v) => v as SnowflakeStringType?,
          ),
          lastPinTimestamp: $checkedConvert(
            'last_pin_timestamp',
            (v) => v as String?,
          ),
          version: $checkedConvert(
            'version',
            (v) => v as UnsignedInt64StringType?,
          ),
          flags: $checkedConvert('flags', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
      fieldKeyMap: const {
        'mentionCount': 'mention_count',
        'lastMessageId': 'last_message_id',
        'lastPinTimestamp': 'last_pin_timestamp',
      },
    );

Map<String, dynamic> _$ReadStateResponseToJson(ReadStateResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mention_count': instance.mentionCount,
      'last_message_id': instance.lastMessageId,
      'last_pin_timestamp': instance.lastPinTimestamp,
      'version': ?instance.version,
      'flags': ?instance.flags,
    };
