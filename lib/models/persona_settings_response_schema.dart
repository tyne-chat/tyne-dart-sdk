// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'active_persona_mode_schema.dart';
import 'active_persona_scope_schema.dart';
import 'persona_asset_hash_type.dart';
import 'snowflake_string_type.dart';

part 'persona_settings_response_schema.g.dart';

@JsonSerializable()
class PersonaSettingsResponseSchema {
  const PersonaSettingsResponseSchema({
    required this.userId,
    this.activePersonaId,
    this.displayTagText,
    this.displayTagIcon,
    this.updatedAt,
    this.activePersonaMode = ActivePersonaModeSchema.manual,
    this.activePersonaScope = ActivePersonaScopeSchema.global,
    this.isLatched = false,
  });

  factory PersonaSettingsResponseSchema.fromJson(Map<String, Object?> json) =>
      _$PersonaSettingsResponseSchemaFromJson(json);

  /// User Snowflake ID
  @JsonKey(name: 'user_id', defaultValue: '')
  final SnowflakeStringType userId;
  @JsonKey(name: 'active_persona_mode')
  final ActivePersonaModeSchema activePersonaMode;

  /// Whether the selected persona is one for every channel or remembered per channel
  @JsonKey(name: 'active_persona_scope')
  final ActivePersonaScopeSchema activePersonaScope;
  @JsonKey(includeIfNull: false, name: 'active_persona_id')
  final SnowflakeStringType? activePersonaId;
  @JsonKey(name: 'is_latched')
  final bool isLatched;
  @JsonKey(includeIfNull: false, name: 'display_tag_text')
  final String? displayTagText;

  /// Hash of the display tag icon, an image stored under the account
  @JsonKey(includeIfNull: false, name: 'display_tag_icon')
  final PersonaAssetHashType? displayTagIcon;
  @JsonKey(includeIfNull: false, name: 'updated_at')
  final String? updatedAt;

  Map<String, Object?> toJson() => _$PersonaSettingsResponseSchemaToJson(this);
}
