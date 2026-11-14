// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'persona_import_preview_request_schema_display_tag.g.dart';

@JsonSerializable()
class PersonaImportPreviewRequestSchemaDisplayTag {
  const PersonaImportPreviewRequestSchemaDisplayTag({this.text, this.hasIcon});

  factory PersonaImportPreviewRequestSchemaDisplayTag.fromJson(
    Map<String, Object?> json,
  ) => _$PersonaImportPreviewRequestSchemaDisplayTagFromJson(json);

  /// The file's system tag
  @JsonKey(includeIfNull: false)
  final String? text;

  /// Whether the file carries a tag icon
  @JsonKey(includeIfNull: false, name: 'has_icon')
  final bool? hasIcon;

  Map<String, Object?> toJson() =>
      _$PersonaImportPreviewRequestSchemaDisplayTagToJson(this);
}
