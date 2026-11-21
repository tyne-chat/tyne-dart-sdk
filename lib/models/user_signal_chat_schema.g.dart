// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_signal_chat_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSignalChatSchema _$UserSignalChatSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UserSignalChatSchema', json, ($checkedConvert) {
  final val = UserSignalChatSchema(
    channelId: $checkedConvert(
      'channel_id',
      (v) => v as SnowflakeStringType? ?? '',
    ),
    signals: $checkedConvert(
      'signals',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => UserSignalRefSchema.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
    ),
    updatedAt: $checkedConvert('updated_at', (v) => (v as num?)?.toInt() ?? 0),
  );
  return val;
}, fieldKeyMap: const {'channelId': 'channel_id', 'updatedAt': 'updated_at'});

Map<String, dynamic> _$UserSignalChatSchemaToJson(
  UserSignalChatSchema instance,
) => <String, dynamic>{
  'channel_id': instance.channelId,
  'signals': instance.signals,
  'updated_at': instance.updatedAt,
};
