// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_visibility_bulk_request_schema_personas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaVisibilityBulkRequestSchemaPersonas
_$PersonaVisibilityBulkRequestSchemaPersonasFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaVisibilityBulkRequestSchemaPersonas', json, (
  $checkedConvert,
) {
  final val = PersonaVisibilityBulkRequestSchemaPersonas(
    id: $checkedConvert('id', (v) => v as SnowflakeStringType? ?? ''),
    visibility: $checkedConvert(
      'visibility',
      (v) => v == null ? null : PersonaVisibilitySchema.fromJson(v as String),
    ),
  );
  return val;
});

Map<String, dynamic> _$PersonaVisibilityBulkRequestSchemaPersonasToJson(
  PersonaVisibilityBulkRequestSchemaPersonas instance,
) => <String, dynamic>{'id': instance.id, 'visibility': ?instance.visibility};
