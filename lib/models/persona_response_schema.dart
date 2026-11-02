// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_asset_hash_type.dart';
import 'persona_tag_schema.dart';
import 'persona_visibility_schema.dart';
import 'signature_emoji_schema.dart';
import 'snowflake_string_type.dart';

part 'persona_response_schema.g.dart';

@JsonSerializable()
class PersonaResponseSchema {
  const PersonaResponseSchema({
    required this.id,
    required this.name,
    required this.visibility,
    required this.createdAt,
    required this.updatedAt,
    this.autoTagDisabled = false,
    this.personaTags = const [],
    this.signatureEmojis = const [],
    this.useCount = 0,
    this.avatarHash,
    this.bannerHash,
    this.pronouns,
    this.color,
    this.avatarColor,
    this.bio,
    this.lastUsedAtMs,
    this.externalUuid,
    this.deletedAt,
  });

  factory PersonaResponseSchema.fromJson(Map<String, Object?> json) =>
      _$PersonaResponseSchemaFromJson(json);

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

  /// Whether persona tag matching is disabled
  @JsonKey(name: 'auto_tag_disabled')
  final bool autoTagDisabled;

  /// Persona prefix and suffix tags
  @JsonKey(name: 'persona_tags')
  final List<PersonaTagSchema> personaTags;

  /// Signature emojis for this persona
  @JsonKey(name: 'signature_emojis')
  final List<SignatureEmojiSchema> signatureEmojis;

  /// Usage counter for frecency ranking
  @JsonKey(name: 'use_count')
  final int useCount;

  /// Timestamp in ms when the persona was last used
  @JsonKey(includeIfNull: false, name: 'last_used_at_ms')
  final String? lastUsedAtMs;

  /// Visibility setting: unlisted (default), public, or private
  @JsonKey(defaultValue: PersonaVisibilitySchema.$unknown)
  final PersonaVisibilitySchema visibility;

  /// External UUID for idempotent PluralKit imports
  @JsonKey(includeIfNull: false, name: 'external_uuid')
  final String? externalUuid;

  /// ISO timestamp of persona creation
  @JsonKey(name: 'created_at', defaultValue: '')
  final String createdAt;

  /// ISO timestamp of last update
  @JsonKey(name: 'updated_at', defaultValue: '')
  final String updatedAt;

  /// ISO timestamp if the persona has been soft-deleted
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  final DateTime? deletedAt;

  Map<String, Object?> toJson() => _$PersonaResponseSchemaToJson(this);
}
