// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_group_response_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaGroupResponseSchema _$PersonaGroupResponseSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaGroupResponseSchema', json, ($checkedConvert) {
  final val = PersonaGroupResponseSchema(
    id: $checkedConvert('id', (v) => v as SnowflakeStringType? ?? ''),
    name: $checkedConvert('name', (v) => v as String? ?? ''),
    personaIds: $checkedConvert(
      'persona_ids',
      (v) =>
          (v as List<dynamic>?)
              ?.map((e) => e as SnowflakeStringType)
              .toList() ??
          [],
    ),
  );
  return val;
}, fieldKeyMap: const {'personaIds': 'persona_ids'});

Map<String, dynamic> _$PersonaGroupResponseSchemaToJson(
  PersonaGroupResponseSchema instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'persona_ids': instance.personaIds,
};
