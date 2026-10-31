// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guild_command_create_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuildCommandCreateRequestSchema _$GuildCommandCreateRequestSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'GuildCommandCreateRequestSchema',
  json,
  ($checkedConvert) {
    final val = GuildCommandCreateRequestSchema._(
      name: $checkedConvert('name', (v) => v as String? ?? ''),
      template: $checkedConvert('template', (v) => v as String? ?? ''),
      inputMode: $checkedConvert(
        'input_mode',
        (v) => v == null
            ? GuildCommandInputMode.$unknown
            : GuildCommandInputMode.fromJson(v as String),
      ),
      inputType: $checkedConvert(
        'input_type',
        (v) => v == null
            ? GuildCommandInputType.text
            : GuildCommandInputType.fromJson(v as String),
      ),
      descriptionValue: $checkedConvert('description', (v) => v as String?),
      inputHintValue: $checkedConvert('input_hint', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'inputMode': 'input_mode',
    'inputType': 'input_type',
    'descriptionValue': 'description',
    'inputHintValue': 'input_hint',
  },
);

Map<String, dynamic> _$GuildCommandCreateRequestSchemaToJson(
  GuildCommandCreateRequestSchema instance,
) => <String, dynamic>{
  'name': instance.name,
  'template': instance.template,
  'input_mode': instance.inputMode,
  'input_type': instance.inputType,
  'description': ?instance.descriptionValue,
  'input_hint': ?instance.inputHintValue,
};
