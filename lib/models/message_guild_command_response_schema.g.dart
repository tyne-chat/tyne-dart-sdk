// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_guild_command_response_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageGuildCommandResponseSchema _$MessageGuildCommandResponseSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('MessageGuildCommandResponseSchema', json, (
  $checkedConvert,
) {
  final val = MessageGuildCommandResponseSchema(
    id: $checkedConvert('id', (v) => v as SnowflakeStringType? ?? ''),
    guildId: $checkedConvert(
      'guild_id',
      (v) => v as SnowflakeStringType? ?? '',
    ),
    name: $checkedConvert('name', (v) => v as String? ?? ''),
  );
  return val;
}, fieldKeyMap: const {'guildId': 'guild_id'});

Map<String, dynamic> _$MessageGuildCommandResponseSchemaToJson(
  MessageGuildCommandResponseSchema instance,
) => <String, dynamic>{
  'id': instance.id,
  'guild_id': instance.guildId,
  'name': instance.name,
};
