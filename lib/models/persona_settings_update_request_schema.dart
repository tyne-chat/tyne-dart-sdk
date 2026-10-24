// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'json_nullable.dart';

import 'active_persona_mode_schema.dart';
import 'active_persona_scope_schema.dart';
import 'persona_asset_hash_type.dart';
import 'snowflake_string_type.dart';

part 'persona_settings_update_request_schema.g.dart';

@JsonSerializable(constructor: '_')
class PersonaSettingsUpdateRequestSchema {
  PersonaSettingsUpdateRequestSchema({
    this.activePersonaMode,
    this.activePersonaScope,
    this.isLatched,
    JsonNullable<SnowflakeStringType> activePersonaId =
        const JsonNullable<SnowflakeStringType>.undefined(),
    JsonNullable<String> displayTagText =
        const JsonNullable<String>.undefined(),
    JsonNullable<PersonaAssetHashType> displayTagIcon =
        const JsonNullable<PersonaAssetHashType>.undefined(),
  }) : activePersonaId = activePersonaId,
       activePersonaIdValue = activePersonaId.value,
       _activePersonaIdPresent = activePersonaId.isPresent,
       displayTagText = displayTagText,
       displayTagTextValue = displayTagText.value,
       _displayTagTextPresent = displayTagText.isPresent,
       displayTagIcon = displayTagIcon,
       displayTagIconValue = displayTagIcon.value,
       _displayTagIconPresent = displayTagIcon.isPresent;

  const PersonaSettingsUpdateRequestSchema._({
    this.activePersonaMode,
    this.activePersonaScope,
    this.activePersonaIdValue,
    this.isLatched,
    this.displayTagTextValue,
    this.displayTagIconValue,
  }) : activePersonaId = const JsonNullable<SnowflakeStringType>.undefined(),
       _activePersonaIdPresent = false,
       displayTagText = const JsonNullable<String>.undefined(),
       _displayTagTextPresent = false,
       displayTagIcon = const JsonNullable<PersonaAssetHashType>.undefined(),
       _displayTagIconPresent = false;
  factory PersonaSettingsUpdateRequestSchema.patch(Map<String, Object?> json) =>
      PersonaSettingsUpdateRequestSchema.fromJson(json);

  factory PersonaSettingsUpdateRequestSchema.fromJson(
    Map<String, Object?> json,
  ) {
    final value = _$PersonaSettingsUpdateRequestSchemaFromJson(json);
    return PersonaSettingsUpdateRequestSchema(
      activePersonaMode: value.activePersonaMode,
      activePersonaScope: value.activePersonaScope,
      activePersonaId: json.containsKey('active_persona_id')
          ? JsonNullable<SnowflakeStringType>.of(value.activePersonaIdValue)
          : const JsonNullable<SnowflakeStringType>.undefined(),
      isLatched: value.isLatched,
      displayTagText: json.containsKey('display_tag_text')
          ? JsonNullable<String>.of(value.displayTagTextValue)
          : const JsonNullable<String>.undefined(),
      displayTagIcon: json.containsKey('display_tag_icon')
          ? JsonNullable<PersonaAssetHashType>.of(value.displayTagIconValue)
          : const JsonNullable<PersonaAssetHashType>.undefined(),
    );
  }

  @JsonKey(includeIfNull: false, name: 'active_persona_mode')
  final ActivePersonaModeSchema? activePersonaMode;
  @JsonKey(includeIfNull: false, name: 'active_persona_scope')
  final ActivePersonaScopeSchema? activePersonaScope;
  @JsonKey(includeIfNull: false, name: 'is_latched')
  final bool? isLatched;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<SnowflakeStringType> activePersonaId;
  @JsonKey(includeIfNull: false, name: 'active_persona_id')
  final SnowflakeStringType? activePersonaIdValue;
  final bool _activePersonaIdPresent;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<String> displayTagText;
  @JsonKey(includeIfNull: false, name: 'display_tag_text')
  final String? displayTagTextValue;
  final bool _displayTagTextPresent;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<PersonaAssetHashType> displayTagIcon;
  @JsonKey(includeIfNull: false, name: 'display_tag_icon')
  final PersonaAssetHashType? displayTagIconValue;
  final bool _displayTagIconPresent;

  Map<String, Object?> toJson() {
    final json = _$PersonaSettingsUpdateRequestSchemaToJson(this);
    if (_activePersonaIdPresent) {
      json.putIfAbsent('active_persona_id', () => activePersonaIdValue);
    }
    if (_displayTagTextPresent) {
      json.putIfAbsent('display_tag_text', () => displayTagTextValue);
    }
    if (_displayTagIconPresent) {
      json.putIfAbsent('display_tag_icon', () => displayTagIconValue);
    }
    return json;
  }
}
