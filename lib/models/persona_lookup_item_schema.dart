// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_asset_hash_type.dart';
import 'persona_visibility_schema.dart';

part 'persona_lookup_item_schema.g.dart';

@JsonSerializable()
class PersonaLookupItemSchema {
  const PersonaLookupItemSchema({
    required this.id,
    required this.name,
    required this.userId,
    this.avatar,
    this.avatarColor,
    this.displayTagText,
    this.displayTagIcon,
    this.color,
    this.visibility,
  });

  factory PersonaLookupItemSchema.fromJson(Map<String, Object?> json) =>
      _$PersonaLookupItemSchemaFromJson(json);

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

  /// The persona owner’s user ID
  @JsonKey(name: 'user_id', defaultValue: '')
  final String userId;

  Map<String, Object?> toJson() => _$PersonaLookupItemSchemaToJson(this);
}
