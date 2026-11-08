// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_import_preview_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaImportPreviewRequestSchema _$PersonaImportPreviewRequestSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaImportPreviewRequestSchema', json, (
  $checkedConvert,
) {
  final val = PersonaImportPreviewRequestSchema._(
    source: $checkedConvert(
      'source',
      (v) => v == null
          ? PersonaImportSourceKindSchema.$unknown
          : PersonaImportSourceKindSchema.fromJson(v as String),
    ),
    members: $checkedConvert(
      'members',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => PersonaImportPreviewMemberSchema.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          [],
    ),
    displayTagValue: $checkedConvert(
      'display_tag',
      (v) => v == null
          ? null
          : PersonaImportPreviewRequestSchemaDisplayTag.fromJson(
              v as Map<String, dynamic>,
            ),
    ),
  );
  return val;
}, fieldKeyMap: const {'displayTagValue': 'display_tag'});

Map<String, dynamic> _$PersonaImportPreviewRequestSchemaToJson(
  PersonaImportPreviewRequestSchema instance,
) => <String, dynamic>{
  'source': instance.source,
  'members': instance.members,
  'display_tag': ?instance.displayTagValue,
};
