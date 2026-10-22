// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_search_results_response_messages_message_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageSearchResultsResponseMessagesMessageReference
_$MessageSearchResultsResponseMessagesMessageReferenceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'MessageSearchResultsResponseMessagesMessageReference',
  json,
  ($checkedConvert) {
    final val = MessageSearchResultsResponseMessagesMessageReference(
      channelId: $checkedConvert(
        'channel_id',
        (v) => v as SnowflakeStringType? ?? '',
      ),
      type: $checkedConvert(
        'type',
        (v) => v == null
            ? MessageReferenceType.$unknown
            : MessageReferenceType.fromJson((v as num).toInt()),
      ),
      messageId: $checkedConvert(
        'message_id',
        (v) => v as SnowflakeStringType?,
      ),
      guildId: $checkedConvert('guild_id', (v) => v as SnowflakeStringType?),
    );
    return val;
  },
  fieldKeyMap: const {
    'channelId': 'channel_id',
    'messageId': 'message_id',
    'guildId': 'guild_id',
  },
);

Map<String, dynamic>
_$MessageSearchResultsResponseMessagesMessageReferenceToJson(
  MessageSearchResultsResponseMessagesMessageReference instance,
) => <String, dynamic>{
  'channel_id': instance.channelId,
  'message_id': ?instance.messageId,
  'guild_id': ?instance.guildId,
  'type': instance.type,
};
