// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guild_command_run_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuildCommandRunRequestSchema _$GuildCommandRunRequestSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('GuildCommandRunRequestSchema', json, ($checkedConvert) {
  final val = GuildCommandRunRequestSchema._(
    nonce: $checkedConvert('nonce', (v) => v as MessageNonceRequest? ?? ''),
    inputValue: $checkedConvert('input', (v) => v as String?),
    personaIdValue: $checkedConvert(
      'persona_id',
      (v) => v as SnowflakeStringType?,
    ),
  );
  return val;
}, fieldKeyMap: const {'inputValue': 'input', 'personaIdValue': 'persona_id'});

Map<String, dynamic> _$GuildCommandRunRequestSchemaToJson(
  GuildCommandRunRequestSchema instance,
) => <String, dynamic>{
  'nonce': instance.nonce,
  'input': ?instance.inputValue,
  'persona_id': ?instance.personaIdValue,
};
