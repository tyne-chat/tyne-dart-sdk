// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_import_preview_entry_schema.dart';
import 'persona_import_preview_response_schema_display_tag.dart';
import 'persona_response_schema.dart';

part 'persona_import_preview_response_schema.g.dart';

@JsonSerializable()
class PersonaImportPreviewResponseSchema {
  const PersonaImportPreviewResponseSchema({
    required this.entries,
    required this.personas,
    required this.displayTag,
    required this.untouched,
    required this.needsReview,
  });

  factory PersonaImportPreviewResponseSchema.fromJson(
    Map<String, Object?> json,
  ) => _$PersonaImportPreviewResponseSchemaFromJson(json);

  /// One per member, in request order
  @JsonKey(defaultValue: <PersonaImportPreviewEntrySchema>[])
  final List<PersonaImportPreviewEntrySchema> entries;

  /// Every persona the entries name, deleted ones included, so the review can show them
  @JsonKey(defaultValue: <PersonaResponseSchema>[])
  final List<PersonaResponseSchema> personas;
  @JsonKey(
    name: 'display_tag',
    defaultValue: _$missingPersonaImportPreviewResponseSchemaDisplayTag,
  )
  final PersonaImportPreviewResponseSchemaDisplayTag displayTag;

  /// Live personas no member of the file matched; they stay as they are
  @JsonKey(defaultValue: 0)
  final int untouched;

  /// Whether anything needs a decision; if not, the client can apply at once
  @JsonKey(name: 'needs_review', defaultValue: false)
  final bool needsReview;

  Map<String, Object?> toJson() =>
      _$PersonaImportPreviewResponseSchemaToJson(this);
}

PersonaImportPreviewResponseSchemaDisplayTag
_$missingPersonaImportPreviewResponseSchemaDisplayTag() =>
    PersonaImportPreviewResponseSchemaDisplayTag.fromJson(
      const <String, dynamic>{},
    );
