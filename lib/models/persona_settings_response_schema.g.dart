// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_settings_response_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaSettingsResponseSchema _$PersonaSettingsResponseSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PersonaSettingsResponseSchema',
  json,
  ($checkedConvert) {
    final val = PersonaSettingsResponseSchema(
      userId: $checkedConvert(
        'user_id',
        (v) => v as SnowflakeStringType? ?? '',
      ),
      activePersonaId: $checkedConvert(
        'active_persona_id',
        (v) => v as SnowflakeStringType?,
      ),
      displayTagText: $checkedConvert('display_tag_text', (v) => v as String?),
      displayTagIcon: $checkedConvert(
        'display_tag_icon',
        (v) => v as PersonaAssetHashType?,
      ),
      updatedAt: $checkedConvert('updated_at', (v) => v as String?),
      activePersonaMode: $checkedConvert(
        'active_persona_mode',
        (v) => v == null
            ? ActivePersonaModeSchema.manual
            : ActivePersonaModeSchema.fromJson(v as String),
      ),
      activePersonaScope: $checkedConvert(
        'active_persona_scope',
        (v) => v == null
            ? ActivePersonaScopeSchema.global
            : ActivePersonaScopeSchema.fromJson(v as String),
      ),
      isLatched: $checkedConvert('is_latched', (v) => v as bool? ?? false),
    );
    return val;
  },
  fieldKeyMap: const {
    'userId': 'user_id',
    'activePersonaId': 'active_persona_id',
    'displayTagText': 'display_tag_text',
    'displayTagIcon': 'display_tag_icon',
    'updatedAt': 'updated_at',
    'activePersonaMode': 'active_persona_mode',
    'activePersonaScope': 'active_persona_scope',
    'isLatched': 'is_latched',
  },
);

Map<String, dynamic> _$PersonaSettingsResponseSchemaToJson(
  PersonaSettingsResponseSchema instance,
) => <String, dynamic>{
  'user_id': instance.userId,
  'active_persona_mode': instance.activePersonaMode,
  'active_persona_scope': instance.activePersonaScope,
  'active_persona_id': ?instance.activePersonaId,
  'is_latched': instance.isLatched,
  'display_tag_text': ?instance.displayTagText,
  'display_tag_icon': ?instance.displayTagIcon,
  'updated_at': ?instance.updatedAt,
};
