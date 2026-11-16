// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_signals_restore_response_schema_chats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSignalsRestoreResponseSchemaChats
_$UserSignalsRestoreResponseSchemaChatsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UserSignalsRestoreResponseSchemaChats', json, (
      $checkedConvert,
    ) {
      final val = UserSignalsRestoreResponseSchemaChats(
        channelId: $checkedConvert(
          'channel_id',
          (v) => v as SnowflakeStringType? ?? '',
        ),
        available: $checkedConvert('available', (v) => v as bool? ?? false),
        now: $checkedConvert(
          'now',
          (v) =>
              (v as List<dynamic>?)
                  ?.map(
                    (e) =>
                        UserSignalRefSchema.fromJson(e as Map<String, dynamic>),
                  )
                  .toList() ??
              [],
        ),
        after: $checkedConvert(
          'after',
          (v) =>
              (v as List<dynamic>?)
                  ?.map(
                    (e) =>
                        UserSignalRefSchema.fromJson(e as Map<String, dynamic>),
                  )
                  .toList() ??
              [],
        ),
      );
      return val;
    }, fieldKeyMap: const {'channelId': 'channel_id'});

Map<String, dynamic> _$UserSignalsRestoreResponseSchemaChatsToJson(
  UserSignalsRestoreResponseSchemaChats instance,
) => <String, dynamic>{
  'channel_id': instance.channelId,
  'available': instance.available,
  'now': instance.now,
  'after': instance.after,
};
