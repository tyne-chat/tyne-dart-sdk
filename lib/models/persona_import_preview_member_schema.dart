// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'json_nullable.dart';

import 'persona_import_image_ref_schema.dart';
import 'persona_tag_schema_input.dart';
import 'persona_visibility_schema.dart';
import 'signature_emoji_schema_input.dart';

part 'persona_import_preview_member_schema.g.dart';

@JsonSerializable(constructor: '_')
class PersonaImportPreviewMemberSchema {
  PersonaImportPreviewMemberSchema({
    required this.name,
    this.autoTagDisabled,
    this.personaTags,
    this.signatureEmojis,
    this.visibility,
    JsonNullable<String> pronouns = const JsonNullable<String>.undefined(),
    JsonNullable<int> color = const JsonNullable<int>.undefined(),
    JsonNullable<String> bio = const JsonNullable<String>.undefined(),
    JsonNullable<String> externalUuid = const JsonNullable<String>.undefined(),
    JsonNullable<PersonaImportImageRefSchema> avatar =
        const JsonNullable<PersonaImportImageRefSchema>.undefined(),
    JsonNullable<PersonaImportImageRefSchema> banner =
        const JsonNullable<PersonaImportImageRefSchema>.undefined(),
  }) : pronouns = pronouns,
       pronounsValue = pronouns.value,
       _pronounsPresent = pronouns.isPresent,
       color = color,
       colorValue = color.value,
       _colorPresent = color.isPresent,
       bio = bio,
       bioValue = bio.value,
       _bioPresent = bio.isPresent,
       externalUuid = externalUuid,
       externalUuidValue = externalUuid.value,
       _externalUuidPresent = externalUuid.isPresent,
       avatar = avatar,
       avatarValue = avatar.value,
       _avatarPresent = avatar.isPresent,
       banner = banner,
       bannerValue = banner.value,
       _bannerPresent = banner.isPresent;

  const PersonaImportPreviewMemberSchema._({
    required this.name,
    this.pronounsValue,
    this.colorValue,
    this.bioValue,
    this.autoTagDisabled,
    this.personaTags,
    this.signatureEmojis,
    this.visibility,
    this.externalUuidValue,
    this.avatarValue,
    this.bannerValue,
  }) : pronouns = const JsonNullable<String>.undefined(),
       _pronounsPresent = false,
       color = const JsonNullable<int>.undefined(),
       _colorPresent = false,
       bio = const JsonNullable<String>.undefined(),
       _bioPresent = false,
       externalUuid = const JsonNullable<String>.undefined(),
       _externalUuidPresent = false,
       avatar = const JsonNullable<PersonaImportImageRefSchema>.undefined(),
       _avatarPresent = false,
       banner = const JsonNullable<PersonaImportImageRefSchema>.undefined(),
       _bannerPresent = false;
  factory PersonaImportPreviewMemberSchema.patch(Map<String, Object?> json) =>
      PersonaImportPreviewMemberSchema.fromJson(json);

  factory PersonaImportPreviewMemberSchema.fromJson(Map<String, Object?> json) {
    final value = _$PersonaImportPreviewMemberSchemaFromJson(json);
    return PersonaImportPreviewMemberSchema(
      name: value.name,
      pronouns: json.containsKey('pronouns')
          ? JsonNullable<String>.of(value.pronounsValue)
          : const JsonNullable<String>.undefined(),
      color: json.containsKey('color')
          ? JsonNullable<int>.of(value.colorValue)
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
      avatar: json.containsKey('avatar')
          ? JsonNullable<PersonaImportImageRefSchema>.of(value.avatarValue)
          : const JsonNullable<PersonaImportImageRefSchema>.undefined(),
      banner: json.containsKey('banner')
          ? JsonNullable<PersonaImportImageRefSchema>.of(value.bannerValue)
          : const JsonNullable<PersonaImportImageRefSchema>.undefined(),
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
  final JsonNullable<PersonaImportImageRefSchema> avatar;
  @JsonKey(includeIfNull: false, name: 'avatar')
  final PersonaImportImageRefSchema? avatarValue;
  final bool _avatarPresent;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<PersonaImportImageRefSchema> banner;
  @JsonKey(includeIfNull: false, name: 'banner')
  final PersonaImportImageRefSchema? bannerValue;
  final bool _bannerPresent;

  Map<String, Object?> toJson() {
    final json = _$PersonaImportPreviewMemberSchemaToJson(this);
    if (_pronounsPresent) {
      json.putIfAbsent('pronouns', () => pronounsValue);
    }
    if (_colorPresent) {
      json.putIfAbsent('color', () => colorValue);
    }
    if (_bioPresent) {
      json.putIfAbsent('bio', () => bioValue);
    }
    if (_externalUuidPresent) {
      json.putIfAbsent('external_uuid', () => externalUuidValue);
    }
    if (_avatarPresent) {
      json.putIfAbsent('avatar', () => avatarValue);
    }
    if (_bannerPresent) {
      json.putIfAbsent('banner', () => bannerValue);
    }
    return json;
  }
}
