// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_import_action_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaImportActionSchema _$PersonaImportActionSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PersonaImportActionSchema',
  json,
  ($checkedConvert) {
    final val = PersonaImportActionSchema._(
      action: $checkedConvert(
        'action',
        (v) => v == null
            ? PersonaImportActionKindSchema.$unknown
            : PersonaImportActionKindSchema.fromJson(v as String),
      ),
      personaIdValue: $checkedConvert(
        'persona_id',
        (v) => v as SnowflakeStringType?,
      ),
      externalUuidValue: $checkedConvert('external_uuid', (v) => v as String?),
      itemValue: $checkedConvert(
        'item',
        (v) => v == null
            ? null
            : PersonaImportItemSchema.fromJson(v as Map<String, dynamic>),
      ),
      dropTags: $checkedConvert(
        'drop_tags',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) => PersonaTagSchemaInput.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
      dropSignatureEmojis: $checkedConvert(
        'drop_signature_emojis',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) =>
                  SignatureEmojiSchemaInput.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
      keepAvatar: $checkedConvert('keep_avatar', (v) => v as bool?),
      keepBanner: $checkedConvert('keep_banner', (v) => v as bool?),
    );
    return val;
  },
  fieldKeyMap: const {
    'personaIdValue': 'persona_id',
    'externalUuidValue': 'external_uuid',
    'itemValue': 'item',
    'dropTags': 'drop_tags',
    'dropSignatureEmojis': 'drop_signature_emojis',
    'keepAvatar': 'keep_avatar',
    'keepBanner': 'keep_banner',
  },
);

Map<String, dynamic> _$PersonaImportActionSchemaToJson(
  PersonaImportActionSchema instance,
) => <String, dynamic>{
  'action': instance.action,
  'drop_tags': ?instance.dropTags,
  'drop_signature_emojis': ?instance.dropSignatureEmojis,
  'keep_avatar': ?instance.keepAvatar,
  'keep_banner': ?instance.keepBanner,
  'persona_id': ?instance.personaIdValue,
  'external_uuid': ?instance.externalUuidValue,
  'item': ?instance.itemValue,
};
