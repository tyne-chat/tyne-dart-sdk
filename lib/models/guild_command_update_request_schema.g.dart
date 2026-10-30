// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guild_command_update_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuildCommandUpdateRequestSchema _$GuildCommandUpdateRequestSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'GuildCommandUpdateRequestSchema',
  json,
  ($checkedConvert) {
    final val = GuildCommandUpdateRequestSchema._(
      name: $checkedConvert('name', (v) => v as String?),
      description: $checkedConvert('description', (v) => v as String?),
      template: $checkedConvert('template', (v) => v as String?),
      inputMode: $checkedConvert(
        'input_mode',
        (v) => v == null ? null : GuildCommandInputMode.fromJson(v as String),
      ),
      inputType: $checkedConvert(
        'input_type',
        (v) => v == null ? null : GuildCommandInputType.fromJson(v as String),
      ),
      inputHintValue: $checkedConvert('input_hint', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'inputMode': 'input_mode',
    'inputType': 'input_type',
    'inputHintValue': 'input_hint',
  },
);

Map<String, dynamic> _$GuildCommandUpdateRequestSchemaToJson(
  GuildCommandUpdateRequestSchema instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'description': ?instance.description,
  'template': ?instance.template,
  'input_mode': ?instance.inputMode,
  'input_type': ?instance.inputType,
  'input_hint': ?instance.inputHintValue,
};
