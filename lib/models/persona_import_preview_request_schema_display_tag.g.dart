// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_import_preview_request_schema_display_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaImportPreviewRequestSchemaDisplayTag
_$PersonaImportPreviewRequestSchemaDisplayTagFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaImportPreviewRequestSchemaDisplayTag', json, (
  $checkedConvert,
) {
  final val = PersonaImportPreviewRequestSchemaDisplayTag(
    text: $checkedConvert('text', (v) => v as String?),
    hasIcon: $checkedConvert('has_icon', (v) => v as bool?),
  );
  return val;
}, fieldKeyMap: const {'hasIcon': 'has_icon'});

Map<String, dynamic> _$PersonaImportPreviewRequestSchemaDisplayTagToJson(
  PersonaImportPreviewRequestSchemaDisplayTag instance,
) => <String, dynamic>{'text': ?instance.text, 'has_icon': ?instance.hasIcon};
