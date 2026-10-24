// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_asset_hash_type.dart';
import 'persona_visibility_schema.dart';

part 'message_subprofile_response_schema.g.dart';

@JsonSerializable()
class MessageSubprofileResponseSchema {
  const MessageSubprofileResponseSchema({
    required this.id,
    required this.name,
    this.avatar,
    this.avatarColor,
    this.displayTagText,
    this.displayTagIcon,
    this.color,
    this.visibility,
  });

  factory MessageSubprofileResponseSchema.fromJson(Map<String, Object?> json) =>
      _$MessageSubprofileResponseSchemaFromJson(json);

  /// Persona ID
  @JsonKey(defaultValue: '')
  final String id;

  /// Persona display name
  @JsonKey(defaultValue: '')
  final String name;

  /// Avatar asset hash
  @JsonKey(includeIfNull: false)
  final PersonaAssetHashType? avatar;

  /// Avatar accent color
  @JsonKey(includeIfNull: false, name: 'avatar_color')
  final int? avatarColor;

  /// Display tag text
  @JsonKey(includeIfNull: false, name: 'display_tag_text')
  final String? displayTagText;

  /// Hash of the display tag icon, an image stored under the account
  @JsonKey(includeIfNull: false, name: 'display_tag_icon')
  final PersonaAssetHashType? displayTagIcon;

  /// Custom color integer
  @JsonKey(includeIfNull: false)
  final int? color;

  /// Persona visibility setting
  @JsonKey(includeIfNull: false)
  final PersonaVisibilitySchema? visibility;

  Map<String, Object?> toJson() =>
      _$MessageSubprofileResponseSchemaToJson(this);
}
