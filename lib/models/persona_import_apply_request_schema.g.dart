// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_import_apply_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaImportApplyRequestSchema _$PersonaImportApplyRequestSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaImportApplyRequestSchema', json, ($checkedConvert) {
  final val = PersonaImportApplyRequestSchema(
    source: $checkedConvert(
      'source',
      (v) => v == null
          ? PersonaImportSourceKindSchema.$unknown
          : PersonaImportSourceKindSchema.fromJson(v as String),
    ),
    actions: $checkedConvert(
      'actions',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => PersonaImportActionSchema.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          [],
    ),
  );
  return val;
});

Map<String, dynamic> _$PersonaImportApplyRequestSchemaToJson(
  PersonaImportApplyRequestSchema instance,
) => <String, dynamic>{'source': instance.source, 'actions': instance.actions};
