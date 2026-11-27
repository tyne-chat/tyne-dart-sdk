// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'json_nullable.dart';

import 'persona_import_image_sources_schema_avatar.dart';
import 'persona_import_image_sources_schema_banner.dart';

part 'persona_import_image_sources_schema.g.dart';

@JsonSerializable(constructor: '_')
class PersonaImportImageSourcesSchema {
  PersonaImportImageSourcesSchema({
    JsonNullable<PersonaImportImageSourcesSchemaAvatar> avatar =
        const JsonNullable<PersonaImportImageSourcesSchemaAvatar>.undefined(),
    JsonNullable<PersonaImportImageSourcesSchemaBanner> banner =
        const JsonNullable<PersonaImportImageSourcesSchemaBanner>.undefined(),
  }) : avatar = avatar,
       avatarValue = avatar.value,
       _avatarPresent = avatar.isPresent,
       banner = banner,
       bannerValue = banner.value,
       _bannerPresent = banner.isPresent;

  const PersonaImportImageSourcesSchema._({this.avatarValue, this.bannerValue})
    : avatar =
          const JsonNullable<PersonaImportImageSourcesSchemaAvatar>.undefined(),
      _avatarPresent = false,
      banner =
          const JsonNullable<PersonaImportImageSourcesSchemaBanner>.undefined(),
      _bannerPresent = false;
  factory PersonaImportImageSourcesSchema.patch(Map<String, Object?> json) =>
      PersonaImportImageSourcesSchema.fromJson(json);

  factory PersonaImportImageSourcesSchema.fromJson(Map<String, Object?> json) {
    final value = _$PersonaImportImageSourcesSchemaFromJson(json);
    return PersonaImportImageSourcesSchema(
      avatar: json.containsKey('avatar')
          ? JsonNullable<PersonaImportImageSourcesSchemaAvatar>.of(
              value.avatarValue,
            )
          : const JsonNullable<
              PersonaImportImageSourcesSchemaAvatar
            >.undefined(),
      banner: json.containsKey('banner')
          ? JsonNullable<PersonaImportImageSourcesSchemaBanner>.of(
              value.bannerValue,
            )
          : const JsonNullable<
              PersonaImportImageSourcesSchemaBanner
            >.undefined(),
    );
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<PersonaImportImageSourcesSchemaAvatar> avatar;
  @JsonKey(includeIfNull: false, name: 'avatar')
  final PersonaImportImageSourcesSchemaAvatar? avatarValue;
  final bool _avatarPresent;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<PersonaImportImageSourcesSchemaBanner> banner;
  @JsonKey(includeIfNull: false, name: 'banner')
  final PersonaImportImageSourcesSchemaBanner? bannerValue;
  final bool _bannerPresent;

  Map<String, Object?> toJson() {
    final json = _$PersonaImportImageSourcesSchemaToJson(this);
    if (_avatarPresent) {
      json.putIfAbsent('avatar', () => avatarValue);
    }
    if (_bannerPresent) {
      json.putIfAbsent('banner', () => bannerValue);
    }
    return json;
  }
}
