// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_import_apply_response_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaImportApplyResponseSchema _$PersonaImportApplyResponseSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaImportApplyResponseSchema', json, (
  $checkedConvert,
) {
  final val = PersonaImportApplyResponseSchema(
    personas: $checkedConvert(
      'personas',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) =>
                    PersonaResponseSchema.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
    ),
    dropped: $checkedConvert(
      'dropped',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => PersonaImportApplyResponseSchemaDropped.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          [],
    ),
  );
  return val;
});

Map<String, dynamic> _$PersonaImportApplyResponseSchemaToJson(
  PersonaImportApplyResponseSchema instance,
) => <String, dynamic>{
  'personas': instance.personas,
  'dropped': instance.dropped,
};
