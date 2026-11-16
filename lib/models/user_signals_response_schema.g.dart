// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_signals_response_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSignalsResponseSchema _$UserSignalsResponseSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UserSignalsResponseSchema', json, ($checkedConvert) {
  final val = UserSignalsResponseSchema(
    chats: $checkedConvert(
      'chats',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => UserSignalChatSchema.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
    ),
    restoreAvailable: $checkedConvert(
      'restore_available',
      (v) => v as bool? ?? false,
    ),
  );
  return val;
}, fieldKeyMap: const {'restoreAvailable': 'restore_available'});

Map<String, dynamic> _$UserSignalsResponseSchemaToJson(
  UserSignalsResponseSchema instance,
) => <String, dynamic>{
  'chats': instance.chats,
  'restore_available': instance.restoreAvailable,
};
