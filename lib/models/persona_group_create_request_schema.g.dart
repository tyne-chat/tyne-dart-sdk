// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_group_create_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaGroupCreateRequestSchema _$PersonaGroupCreateRequestSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaGroupCreateRequestSchema', json, ($checkedConvert) {
  final val = PersonaGroupCreateRequestSchema(
    name: $checkedConvert('name', (v) => v as String? ?? ''),
    personaIds: $checkedConvert(
      'persona_ids',
      (v) =>
          (v as List<dynamic>?)?.map((e) => e as SnowflakeStringType).toList(),
    ),
  );
  return val;
}, fieldKeyMap: const {'personaIds': 'persona_ids'});

Map<String, dynamic> _$PersonaGroupCreateRequestSchemaToJson(
  PersonaGroupCreateRequestSchema instance,
) => <String, dynamic>{
  'name': instance.name,
  'persona_ids': ?instance.personaIds,
};
