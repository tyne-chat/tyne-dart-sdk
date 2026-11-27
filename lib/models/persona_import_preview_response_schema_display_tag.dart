// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_import_preview_response_schema_display_tag_decision_decision.dart';

part 'persona_import_preview_response_schema_display_tag.g.dart';

@JsonSerializable()
class PersonaImportPreviewResponseSchemaDisplayTag {
  const PersonaImportPreviewResponseSchemaDisplayTag({
    required this.decision,
    this.currentText,
  });

  factory PersonaImportPreviewResponseSchemaDisplayTag.fromJson(
    Map<String, Object?> json,
  ) => _$PersonaImportPreviewResponseSchemaDisplayTagFromJson(json);

  /// none: the file has no tag, or the same one. auto_apply: the account has no personas and no display tag, so the file's is used. ask: it differs
  @JsonKey(
    defaultValue:
        PersonaImportPreviewResponseSchemaDisplayTagDecisionDecision.$unknown,
  )
  final PersonaImportPreviewResponseSchemaDisplayTagDecisionDecision decision;
  @JsonKey(includeIfNull: false, name: 'current_text')
  final String? currentText;

  Map<String, Object?> toJson() =>
      _$PersonaImportPreviewResponseSchemaDisplayTagToJson(this);
}
