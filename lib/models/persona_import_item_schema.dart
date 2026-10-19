// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'json_nullable.dart';

import 'persona_asset_hash_type.dart';
import 'persona_import_image_sources_schema.dart';
import 'persona_tag_schema_input.dart';
import 'persona_visibility_schema.dart';
import 'signature_emoji_schema_input.dart';

part 'persona_import_item_schema.g.dart';

@JsonSerializable(constructor: '_')
class PersonaImportItemSchema {
  PersonaImportItemSchema({
    required this.name,
    this.autoTagDisabled,
    this.personaTags,
    this.signatureEmojis,
    this.visibility,
    JsonNullable<PersonaAssetHashType> avatarHash =
        const JsonNullable<PersonaAssetHashType>.undefined(),
    JsonNullable<PersonaAssetHashType> bannerHash =
        const JsonNullable<PersonaAssetHashType>.undefined(),
    JsonNullable<String> pronouns = const JsonNullable<String>.undefined(),
    JsonNullable<int> color = const JsonNullable<int>.undefined(),
    JsonNullable<int> avatarColor = const JsonNullable<int>.undefined(),
    JsonNullable<String> bio = const JsonNullable<String>.undefined(),
    JsonNullable<String> externalUuid = const JsonNullable<String>.undefined(),
    JsonNullable<PersonaImportImageSourcesSchema> imageSources =
        const JsonNullable<PersonaImportImageSourcesSchema>.undefined(),
  }) : avatarHash = avatarHash,
       avatarHashValue = avatarHash.value,
       _avatarHashPresent = avatarHash.isPresent,
       bannerHash = bannerHash,
       bannerHashValue = bannerHash.value,
       _bannerHashPresent = bannerHash.isPresent,
       pronouns = pronouns,
       pronounsValue = pronouns.value,
       _pronounsPresent = pronouns.isPresent,
       color = color,
       colorValue = color.value,
       _colorPresent = color.isPresent,
       avatarColor = avatarColor,
       avatarColorValue = avatarColor.value,
       _avatarColorPresent = avatarColor.isPresent,
       bio = bio,
       bioValue = bio.value,
       _bioPresent = bio.isPresent,
       externalUuid = externalUuid,
       externalUuidValue = externalUuid.value,
       _externalUuidPresent = externalUuid.isPresent,
       imageSources = imageSources,
       imageSourcesValue = imageSources.value,
       _imageSourcesPresent = imageSources.isPresent;

  const PersonaImportItemSchema._({
    required this.name,
    this.avatarHashValue,
    this.bannerHashValue,
    this.pronounsValue,
    this.colorValue,
    this.avatarColorValue,
    this.bioValue,
    this.autoTagDisabled,
    this.personaTags,
    this.signatureEmojis,
    this.visibility,
    this.externalUuidValue,
    this.imageSourcesValue,
  }) : avatarHash = const JsonNullable<PersonaAssetHashType>.undefined(),
       _avatarHashPresent = false,
       bannerHash = const JsonNullable<PersonaAssetHashType>.undefined(),
       _bannerHashPresent = false,
       pronouns = const JsonNullable<String>.undefined(),
       _pronounsPresent = false,
       color = const JsonNullable<int>.undefined(),
       _colorPresent = false,
       avatarColor = const JsonNullable<int>.undefined(),
       _avatarColorPresent = false,
       bio = const JsonNullable<String>.undefined(),
       _bioPresent = false,
       externalUuid = const JsonNullable<String>.undefined(),
       _externalUuidPresent = false,
       imageSources =
           const JsonNullable<PersonaImportImageSourcesSchema>.undefined(),
       _imageSourcesPresent = false;
  factory PersonaImportItemSchema.patch(Map<String, Object?> json) =>
      PersonaImportItemSchema.fromJson(json);

  factory PersonaImportItemSchema.fromJson(Map<String, Object?> json) {
    final value = _$PersonaImportItemSchemaFromJson(json);
    return PersonaImportItemSchema(
      name: value.name,
      avatarHash: json.containsKey('avatar_hash')
          ? JsonNullable<PersonaAssetHashType>.of(value.avatarHashValue)
          : const JsonNullable<PersonaAssetHashType>.undefined(),
      bannerHash: json.containsKey('banner_hash')
          ? JsonNullable<PersonaAssetHashType>.of(value.bannerHashValue)
          : const JsonNullable<PersonaAssetHashType>.undefined(),
      pronouns: json.containsKey('pronouns')
          ? JsonNullable<String>.of(value.pronounsValue)
          : const JsonNullable<String>.undefined(),
      color: json.containsKey('color')
          ? JsonNullable<int>.of(value.colorValue)
          : const JsonNullable<int>.undefined(),
      avatarColor: json.containsKey('avatar_color')
          ? JsonNullable<int>.of(value.avatarColorValue)
          : const JsonNullable<int>.undefined(),
      bio: json.containsKey('bio')
          ? JsonNullable<String>.of(value.bioValue)
          : const JsonNullable<String>.undefined(),
      autoTagDisabled: value.autoTagDisabled,
      personaTags: value.personaTags,
      signatureEmojis: value.signatureEmojis,
      visibility: value.visibility,
      externalUuid: json.containsKey('external_uuid')
          ? JsonNullable<String>.of(value.externalUuidValue)
          : const JsonNullable<String>.undefined(),
      imageSources: json.containsKey('image_sources')
          ? JsonNullable<PersonaImportImageSourcesSchema>.of(
              value.imageSourcesValue,
            )
          : const JsonNullable<PersonaImportImageSourcesSchema>.undefined(),
    );
  }

  /// Persona display name
  @JsonKey(defaultValue: '')
  final String name;

  /// Whether auto-tagging is disabled
  @JsonKey(includeIfNull: false, name: 'auto_tag_disabled')
  final bool? autoTagDisabled;

  /// Persona prefix/suffix tags
  @JsonKey(includeIfNull: false, name: 'persona_tags')
  final List<PersonaTagSchemaInput>? personaTags;

  /// Signature emojis for this persona
  @JsonKey(includeIfNull: false, name: 'signature_emojis')
  final List<SignatureEmojiSchemaInput>? signatureEmojis;

  /// Visibility: unlisted (default), public, or private
  @JsonKey(includeIfNull: false)
  final PersonaVisibilitySchema? visibility;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<PersonaAssetHashType> avatarHash;
  @JsonKey(includeIfNull: false, name: 'avatar_hash')
  final PersonaAssetHashType? avatarHashValue;
  final bool _avatarHashPresent;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<PersonaAssetHashType> bannerHash;
  @JsonKey(includeIfNull: false, name: 'banner_hash')
  final PersonaAssetHashType? bannerHashValue;
  final bool _bannerHashPresent;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<String> pronouns;
  @JsonKey(includeIfNull: false, name: 'pronouns')
  final String? pronounsValue;
  final bool _pronounsPresent;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<int> color;
  @JsonKey(includeIfNull: false, name: 'color')
  final int? colorValue;
  final bool _colorPresent;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<int> avatarColor;
  @JsonKey(includeIfNull: false, name: 'avatar_color')
  final int? avatarColorValue;
  final bool _avatarColorPresent;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<String> bio;
  @JsonKey(includeIfNull: false, name: 'bio')
  final String? bioValue;
  final bool _bioPresent;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<String> externalUuid;
  @JsonKey(includeIfNull: false, name: 'external_uuid')
  final String? externalUuidValue;
  final bool _externalUuidPresent;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<PersonaImportImageSourcesSchema> imageSources;
  @JsonKey(includeIfNull: false, name: 'image_sources')
  final PersonaImportImageSourcesSchema? imageSourcesValue;
  final bool _imageSourcesPresent;

  Map<String, Object?> toJson() {
    final json = _$PersonaImportItemSchemaToJson(this);
    if (_avatarHashPresent) {
      json.putIfAbsent('avatar_hash', () => avatarHashValue);
    }
    if (_bannerHashPresent) {
      json.putIfAbsent('banner_hash', () => bannerHashValue);
    }
    if (_pronounsPresent) {
      json.putIfAbsent('pronouns', () => pronounsValue);
    }
    if (_colorPresent) {
      json.putIfAbsent('color', () => colorValue);
    }
    if (_avatarColorPresent) {
      json.putIfAbsent('avatar_color', () => avatarColorValue);
    }
    if (_bioPresent) {
      json.putIfAbsent('bio', () => bioValue);
    }
    if (_externalUuidPresent) {
      json.putIfAbsent('external_uuid', () => externalUuidValue);
    }
    if (_imageSourcesPresent) {
      json.putIfAbsent('image_sources', () => imageSourcesValue);
    }
    return json;
  }
}
