// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_asset_hash_type.dart';
import 'persona_visibility_schema.dart';
import 'snowflake_string_type.dart';

part 'channel_persona_mention_item_schema.g.dart';

@JsonSerializable()
class ChannelPersonaMentionItemSchema {
  const ChannelPersonaMentionItemSchema({
    required this.id,
    required this.name,
    required this.visibility,
    required this.ownerUserId,
    required this.ownerUsername,
    this.useCount = 0,
    this.avatarHash,
    this.bannerHash,
    this.displayTagText,
    this.displayTagIcon,
    this.pronouns,
    this.color,
    this.bio,
    this.lastUsedAtMs,
    this.ownerDiscriminator,
    this.ownerGlobalName,
    this.ownerNickname,
  });

  factory ChannelPersonaMentionItemSchema.fromJson(Map<String, Object?> json) =>
      _$ChannelPersonaMentionItemSchemaFromJson(json);

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

  /// Optional display tag text
  @JsonKey(includeIfNull: false, name: 'display_tag_text')
  final String? displayTagText;

  /// Hash of the display tag icon, an image stored under the account
  @JsonKey(includeIfNull: false, name: 'display_tag_icon')
  final PersonaAssetHashType? displayTagIcon;

  /// Optional pronouns
  @JsonKey(includeIfNull: false)
  final String? pronouns;

  /// Optional accent color integer
  @JsonKey(includeIfNull: false)
  final int? color;

  /// Optional persona bio
  @JsonKey(includeIfNull: false)
  final String? bio;

  /// Visibility setting
  @JsonKey(defaultValue: PersonaVisibilitySchema.$unknown)
  final PersonaVisibilitySchema visibility;

  /// Usage counter for frecency ranking
  @JsonKey(name: 'use_count')
  final int useCount;

  /// Timestamp in ms when the persona was last used
  @JsonKey(includeIfNull: false, name: 'last_used_at_ms')
  final String? lastUsedAtMs;

  /// User ID of the persona owner
  @JsonKey(name: 'owner_user_id', defaultValue: '')
  final SnowflakeStringType ownerUserId;

  /// Username of the persona owner
  @JsonKey(name: 'owner_username', defaultValue: '')
  final String ownerUsername;

  /// Discriminator of the persona owner
  @JsonKey(includeIfNull: false, name: 'owner_discriminator')
  final String? ownerDiscriminator;

  /// Global display name of the persona owner
  @JsonKey(includeIfNull: false, name: 'owner_global_name')
  final String? ownerGlobalName;

  /// Guild nickname if applicable
  @JsonKey(includeIfNull: false, name: 'owner_nickname')
  final String? ownerNickname;

  Map<String, Object?> toJson() =>
      _$ChannelPersonaMentionItemSchemaToJson(this);
}
