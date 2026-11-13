// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'json_nullable.dart';

import 'persona_import_action_kind_schema.dart';
import 'persona_import_item_schema.dart';
import 'persona_tag_schema_input.dart';
import 'signature_emoji_schema_input.dart';
import 'snowflake_string_type.dart';

part 'persona_import_action_schema.g.dart';

@JsonSerializable(constructor: '_')
class PersonaImportActionSchema {
  PersonaImportActionSchema({
    required this.action,
    this.dropTags,
    this.dropSignatureEmojis,
    this.keepAvatar,
    this.keepBanner,
    JsonNullable<SnowflakeStringType> personaId =
        const JsonNullable<SnowflakeStringType>.undefined(),
    JsonNullable<String> externalUuid = const JsonNullable<String>.undefined(),
    JsonNullable<PersonaImportItemSchema> item =
        const JsonNullable<PersonaImportItemSchema>.undefined(),
  }) : personaId = personaId,
       personaIdValue = personaId.value,
       _personaIdPresent = personaId.isPresent,
       externalUuid = externalUuid,
       externalUuidValue = externalUuid.value,
       _externalUuidPresent = externalUuid.isPresent,
       item = item,
       itemValue = item.value,
       _itemPresent = item.isPresent;

  const PersonaImportActionSchema._({
    required this.action,
    this.personaIdValue,
    this.externalUuidValue,
    this.itemValue,
    this.dropTags,
    this.dropSignatureEmojis,
    this.keepAvatar,
    this.keepBanner,
  }) : personaId = const JsonNullable<SnowflakeStringType>.undefined(),
       _personaIdPresent = false,
       externalUuid = const JsonNullable<String>.undefined(),
       _externalUuidPresent = false,
       item = const JsonNullable<PersonaImportItemSchema>.undefined(),
       _itemPresent = false;
  factory PersonaImportActionSchema.patch(Map<String, Object?> json) =>
      PersonaImportActionSchema.fromJson(json);

  factory PersonaImportActionSchema.fromJson(Map<String, Object?> json) {
    final value = _$PersonaImportActionSchemaFromJson(json);
    return PersonaImportActionSchema(
      action: value.action,
      personaId: json.containsKey('persona_id')
          ? JsonNullable<SnowflakeStringType>.of(value.personaIdValue)
          : const JsonNullable<SnowflakeStringType>.undefined(),
      externalUuid: json.containsKey('external_uuid')
          ? JsonNullable<String>.of(value.externalUuidValue)
          : const JsonNullable<String>.undefined(),
      item: json.containsKey('item')
          ? JsonNullable<PersonaImportItemSchema>.of(value.itemValue)
          : const JsonNullable<PersonaImportItemSchema>.undefined(),
      dropTags: value.dropTags,
      dropSignatureEmojis: value.dropSignatureEmojis,
      keepAvatar: value.keepAvatar,
      keepBanner: value.keepBanner,
    );
  }

  @JsonKey(defaultValue: PersonaImportActionKindSchema.$unknown)
  final PersonaImportActionKindSchema action;

  /// Tags to leave out, for add and use_file
  @JsonKey(includeIfNull: false, name: 'drop_tags')
  final List<PersonaTagSchemaInput>? dropTags;

  /// Signature emojis to leave out, for add and use_file
  @JsonKey(includeIfNull: false, name: 'drop_signature_emojis')
  final List<SignatureEmojiSchemaInput>? dropSignatureEmojis;

  /// For use_file: keep the persona's avatar, because the file's could not be stored
  @JsonKey(includeIfNull: false, name: 'keep_avatar')
  final bool? keepAvatar;

  /// For use_file: keep the persona's banner, because the file's could not be stored
  @JsonKey(includeIfNull: false, name: 'keep_banner')
  final bool? keepBanner;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<SnowflakeStringType> personaId;
  @JsonKey(includeIfNull: false, name: 'persona_id')
  final SnowflakeStringType? personaIdValue;
  final bool _personaIdPresent;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<String> externalUuid;
  @JsonKey(includeIfNull: false, name: 'external_uuid')
  final String? externalUuidValue;
  final bool _externalUuidPresent;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<PersonaImportItemSchema> item;
  @JsonKey(includeIfNull: false, name: 'item')
  final PersonaImportItemSchema? itemValue;
  final bool _itemPresent;

  Map<String, Object?> toJson() {
    final json = _$PersonaImportActionSchemaToJson(this);
    if (_personaIdPresent) {
      json.putIfAbsent('persona_id', () => personaIdValue);
    }
    if (_externalUuidPresent) {
      json.putIfAbsent('external_uuid', () => externalUuidValue);
    }
    if (_itemPresent) {
      json.putIfAbsent('item', () => itemValue);
    }
    return json;
  }
}
