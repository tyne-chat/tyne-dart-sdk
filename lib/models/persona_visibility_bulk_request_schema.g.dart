// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_visibility_bulk_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaVisibilityBulkRequestSchema _$PersonaVisibilityBulkRequestSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaVisibilityBulkRequestSchema', json, (
  $checkedConvert,
) {
  final val = PersonaVisibilityBulkRequestSchema(
    personas: $checkedConvert(
      'personas',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => PersonaVisibilityBulkRequestSchemaPersonas.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          [],
    ),
  );
  return val;
});

Map<String, dynamic> _$PersonaVisibilityBulkRequestSchemaToJson(
  PersonaVisibilityBulkRequestSchema instance,
) => <String, dynamic>{'personas': instance.personas};
