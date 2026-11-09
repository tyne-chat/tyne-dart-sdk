// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'json_nullable.dart';

import 'persona_import_preview_member_schema.dart';
import 'persona_import_preview_request_schema_display_tag.dart';
import 'persona_import_source_kind_schema.dart';

part 'persona_import_preview_request_schema.g.dart';

@JsonSerializable(constructor: '_')
class PersonaImportPreviewRequestSchema {
  PersonaImportPreviewRequestSchema({
    required this.source,
    required this.members,
    JsonNullable<PersonaImportPreviewRequestSchemaDisplayTag> displayTag =
        const JsonNullable<
          PersonaImportPreviewRequestSchemaDisplayTag
        >.undefined(),
  }) : displayTag = displayTag,
       displayTagValue = displayTag.value,
       _displayTagPresent = displayTag.isPresent;

  const PersonaImportPreviewRequestSchema._({
    required this.source,
    required this.members,
    this.displayTagValue,
  }) : displayTag =
           const JsonNullable<
             PersonaImportPreviewRequestSchemaDisplayTag
           >.undefined(),
       _displayTagPresent = false;
  factory PersonaImportPreviewRequestSchema.patch(Map<String, Object?> json) =>
      PersonaImportPreviewRequestSchema.fromJson(json);

  factory PersonaImportPreviewRequestSchema.fromJson(
    Map<String, Object?> json,
  ) {
    final value = _$PersonaImportPreviewRequestSchemaFromJson(json);
    return PersonaImportPreviewRequestSchema(
      source: value.source,
      members: value.members,
      displayTag: json.containsKey('display_tag')
          ? JsonNullable<PersonaImportPreviewRequestSchemaDisplayTag>.of(
              value.displayTagValue,
            )
          : const JsonNullable<
              PersonaImportPreviewRequestSchemaDisplayTag
            >.undefined(),
    );
  }

  @JsonKey(defaultValue: PersonaImportSourceKindSchema.$unknown)
  final PersonaImportSourceKindSchema source;

  /// The members, in file order
  @JsonKey(defaultValue: <PersonaImportPreviewMemberSchema>[])
  final List<PersonaImportPreviewMemberSchema> members;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<PersonaImportPreviewRequestSchemaDisplayTag> displayTag;
  @JsonKey(includeIfNull: false, name: 'display_tag')
  final PersonaImportPreviewRequestSchemaDisplayTag? displayTagValue;
  final bool _displayTagPresent;

  Map<String, Object?> toJson() {
    final json = _$PersonaImportPreviewRequestSchemaToJson(this);
    if (_displayTagPresent) {
      json.putIfAbsent('display_tag', () => displayTagValue);
    }
    return json;
  }
}
