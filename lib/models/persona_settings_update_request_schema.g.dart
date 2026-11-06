// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_settings_update_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaSettingsUpdateRequestSchema _$PersonaSettingsUpdateRequestSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PersonaSettingsUpdateRequestSchema',
  json,
  ($checkedConvert) {
    final val = PersonaSettingsUpdateRequestSchema._(
      activePersonaMode: $checkedConvert(
        'active_persona_mode',
        (v) => v == null ? null : ActivePersonaModeSchema.fromJson(v as String),
      ),
      activePersonaScope: $checkedConvert(
        'active_persona_scope',
        (v) =>
            v == null ? null : ActivePersonaScopeSchema.fromJson(v as String),
      ),
      activePersonaIdValue: $checkedConvert(
        'active_persona_id',
        (v) => v as SnowflakeStringType?,
      ),
      isLatched: $checkedConvert('is_latched', (v) => v as bool?),
      displayTagTextValue: $checkedConvert(
        'display_tag_text',
        (v) => v as String?,
      ),
      displayTagIconValue: $checkedConvert(
        'display_tag_icon',
        (v) => v as PersonaAssetHashType?,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'activePersonaMode': 'active_persona_mode',
    'activePersonaScope': 'active_persona_scope',
    'activePersonaIdValue': 'active_persona_id',
    'isLatched': 'is_latched',
    'displayTagTextValue': 'display_tag_text',
    'displayTagIconValue': 'display_tag_icon',
  },
);

Map<String, dynamic> _$PersonaSettingsUpdateRequestSchemaToJson(
  PersonaSettingsUpdateRequestSchema instance,
) => <String, dynamic>{
  'active_persona_mode': ?instance.activePersonaMode,
  'active_persona_scope': ?instance.activePersonaScope,
  'is_latched': ?instance.isLatched,
  'active_persona_id': ?instance.activePersonaIdValue,
  'display_tag_text': ?instance.displayTagTextValue,
  'display_tag_icon': ?instance.displayTagIconValue,
};
