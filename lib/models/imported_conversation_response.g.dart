// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imported_conversation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImportedConversationResponse _$ImportedConversationResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ImportedConversationResponse', json, ($checkedConvert) {
  final val = ImportedConversationResponse(
    channelId: $checkedConvert('channel_id', (v) => v as SnowflakeStringType?),
  );
  return val;
}, fieldKeyMap: const {'channelId': 'channel_id'});

Map<String, dynamic> _$ImportedConversationResponseToJson(
  ImportedConversationResponse instance,
) => <String, dynamic>{'channel_id': instance.channelId};
