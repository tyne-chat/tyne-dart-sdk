// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_asset_hash_type.dart';
import 'persona_visibility_schema.dart';
import 'snowflake_string_type.dart';

part 'public_persona_response_schema.g.dart';

@JsonSerializable()
class PublicPersonaResponseSchema {
  const PublicPersonaResponseSchema({
    required this.id,
    required this.name,
    required this.visibility,
    this.avatarHash,
    this.bannerHash,
    this.pronouns,
    this.color,
    this.avatarColor,
    this.bio,
  });

  factory PublicPersonaResponseSchema.fromJson(Map<String, Object?> json) =>
      _$PublicPersonaResponseSchemaFromJson(json);

  /// The unique Snowflake identifier for this persona
  @JsonKey(defaultValue: '')
  final SnowflakeStringType id;

  /// The persona display name
  @JsonKey(defaultValue: '')
  final String name;

  /// Avatar asset hash
  @JsonKey(includeIfNull: false, name: 'avatar_hash')
  final PersonaAssetHashType? avatarHash;

  /// Banner asset hash
  @JsonKey(includeIfNull: false, name: 'banner_hash')
  final PersonaAssetHashType? bannerHash;

  /// Optional pronouns
  @JsonKey(includeIfNull: false)
  final String? pronouns;

  /// Optional accent color integer
  @JsonKey(includeIfNull: false)
  final int? color;

  /// Avatar accent color
  @JsonKey(includeIfNull: false, name: 'avatar_color')
  final int? avatarColor;

  /// Optional persona bio
  @JsonKey(includeIfNull: false)
  final String? bio;

  /// Visibility setting
  @JsonKey(defaultValue: PersonaVisibilitySchema.$unknown)
  final PersonaVisibilitySchema visibility;

  Map<String, Object?> toJson() => _$PublicPersonaResponseSchemaToJson(this);
}
