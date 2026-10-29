// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_import_image_sources_schema_avatar_field_field.dart';

part 'persona_import_image_sources_schema_avatar.g.dart';

@JsonSerializable()
class PersonaImportImageSourcesSchemaAvatar {
  const PersonaImportImageSourcesSchemaAvatar({
    required this.field,
    this.url,
    this.mainAvatarEmpty,
  });

  factory PersonaImportImageSourcesSchemaAvatar.fromJson(
    Map<String, Object?> json,
  ) => _$PersonaImportImageSourcesSchemaAvatarFromJson(json);

  /// The link the avatar was imported from
  @JsonKey(includeIfNull: false)
  final String? url;

  /// The PluralKit field it came from
  @JsonKey(
    defaultValue: PersonaImportImageSourcesSchemaAvatarFieldField.$unknown,
  )
  final PersonaImportImageSourcesSchemaAvatarFieldField field;

  /// Whether the member's avatar_url was empty, when the avatar came from webhook_avatar_url
  @JsonKey(includeIfNull: false, name: 'main_avatar_empty')
  final bool? mainAvatarEmpty;

  Map<String, Object?> toJson() =>
      _$PersonaImportImageSourcesSchemaAvatarToJson(this);
}
