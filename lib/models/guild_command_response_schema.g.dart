// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guild_command_response_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuildCommandResponseSchema _$GuildCommandResponseSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'GuildCommandResponseSchema',
  json,
  ($checkedConvert) {
    final val = GuildCommandResponseSchema(
      id: $checkedConvert('id', (v) => v as SnowflakeStringType? ?? ''),
      guildId: $checkedConvert(
        'guild_id',
        (v) => v as SnowflakeStringType? ?? '',
      ),
      name: $checkedConvert('name', (v) => v as String? ?? ''),
      description: $checkedConvert('description', (v) => v as String? ?? ''),
      kind: $checkedConvert(
        'kind',
        (v) => v == null
            ? GuildCommandKind.$unknown
            : GuildCommandKind.fromJson(v as String),
      ),
      inputMode: $checkedConvert(
        'input_mode',
        (v) => v == null
            ? GuildCommandInputMode.$unknown
            : GuildCommandInputMode.fromJson(v as String),
      ),
      inputType: $checkedConvert(
        'input_type',
        (v) => v == null
            ? GuildCommandInputType.$unknown
            : GuildCommandInputType.fromJson(v as String),
      ),
      inputHint: $checkedConvert('input_hint', (v) => v as String?),
      creatorId: $checkedConvert(
        'creator_id',
        (v) => v as SnowflakeStringType? ?? '',
      ),
      createdAt: $checkedConvert('created_at', (v) => v as String? ?? ''),
      updatedAt: $checkedConvert('updated_at', (v) => v as String? ?? ''),
      template: $checkedConvert('template', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'guildId': 'guild_id',
    'inputMode': 'input_mode',
    'inputType': 'input_type',
    'inputHint': 'input_hint',
    'creatorId': 'creator_id',
    'createdAt': 'created_at',
    'updatedAt': 'updated_at',
  },
);

Map<String, dynamic> _$GuildCommandResponseSchemaToJson(
  GuildCommandResponseSchema instance,
) => <String, dynamic>{
  'id': instance.id,
  'guild_id': instance.guildId,
  'name': instance.name,
  'description': instance.description,
  'kind': instance.kind,
  'input_mode': instance.inputMode,
  'input_type': instance.inputType,
  'input_hint': instance.inputHint,
  'creator_id': instance.creatorId,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'template': ?instance.template,
};
