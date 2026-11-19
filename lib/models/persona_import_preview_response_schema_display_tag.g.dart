// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_import_preview_response_schema_display_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaImportPreviewResponseSchemaDisplayTag
_$PersonaImportPreviewResponseSchemaDisplayTagFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaImportPreviewResponseSchemaDisplayTag', json, (
  $checkedConvert,
) {
  final val = PersonaImportPreviewResponseSchemaDisplayTag(
    decision: $checkedConvert(
      'decision',
      (v) => v == null
          ? PersonaImportPreviewResponseSchemaDisplayTagDecisionDecision
                .$unknown
          : PersonaImportPreviewResponseSchemaDisplayTagDecisionDecision.fromJson(
              v as String,
            ),
    ),
    currentText: $checkedConvert('current_text', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {'currentText': 'current_text'});

Map<String, dynamic> _$PersonaImportPreviewResponseSchemaDisplayTagToJson(
  PersonaImportPreviewResponseSchemaDisplayTag instance,
) => <String, dynamic>{
  'decision': instance.decision,
  'current_text': ?instance.currentText,
};
