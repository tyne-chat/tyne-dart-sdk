// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_signals_restore_response_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSignalsRestoreResponseSchema _$UserSignalsRestoreResponseSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UserSignalsRestoreResponseSchema', json, (
  $checkedConvert,
) {
  final val = UserSignalsRestoreResponseSchema(
    available: $checkedConvert('available', (v) => v as bool? ?? false),
    createdAt: $checkedConvert('created_at', (v) => (v as num?)?.toInt()),
    action: $checkedConvert(
      'action',
      (v) => v == null
          ? null
          : UserSignalsRestoreActionSchema.fromJson(v as Map<String, dynamic>),
    ),
    chats: $checkedConvert(
      'chats',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => UserSignalsRestoreResponseSchemaChats.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          [],
    ),
  );
  return val;
}, fieldKeyMap: const {'createdAt': 'created_at'});

Map<String, dynamic> _$UserSignalsRestoreResponseSchemaToJson(
  UserSignalsRestoreResponseSchema instance,
) => <String, dynamic>{
  'available': instance.available,
  'created_at': instance.createdAt,
  'action': instance.action,
  'chats': instance.chats,
};
