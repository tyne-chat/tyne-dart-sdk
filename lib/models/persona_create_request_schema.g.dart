// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_create_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaCreateRequestSchema _$PersonaCreateRequestSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PersonaCreateRequestSchema',
  json,
  ($checkedConvert) {
    final val = PersonaCreateRequestSchema._(
      name: $checkedConvert('name', (v) => v as String? ?? ''),
      avatarHashValue: $checkedConvert(
        'avatar_hash',
        (v) => v as PersonaAssetHashType?,
      ),
      bannerHashValue: $checkedConvert(
        'banner_hash',
        (v) => v as PersonaAssetHashType?,
      ),
      pronounsValue: $checkedConvert('pronouns', (v) => v as String?),
      colorValue: $checkedConvert('color', (v) => (v as num?)?.toInt()),
      avatarColorValue: $checkedConvert(
        'avatar_color',
        (v) => (v as num?)?.toInt(),
      ),
      bioValue: $checkedConvert('bio', (v) => v as String?),
      autoTagDisabled: $checkedConvert('auto_tag_disabled', (v) => v as bool?),
      personaTags: $checkedConvert(
        'persona_tags',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) => PersonaTagSchemaInput.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
      signatureEmojis: $checkedConvert(
        'signature_emojis',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) =>
                  SignatureEmojiSchemaInput.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
      visibility: $checkedConvert(
        'visibility',
        (v) => v == null ? null : PersonaVisibilitySchema.fromJson(v as String),
      ),
      externalUuidValue: $checkedConvert('external_uuid', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'avatarHashValue': 'avatar_hash',
    'bannerHashValue': 'banner_hash',
    'pronounsValue': 'pronouns',
    'colorValue': 'color',
    'avatarColorValue': 'avatar_color',
    'bioValue': 'bio',
    'autoTagDisabled': 'auto_tag_disabled',
    'personaTags': 'persona_tags',
    'signatureEmojis': 'signature_emojis',
    'externalUuidValue': 'external_uuid',
  },
);

Map<String, dynamic> _$PersonaCreateRequestSchemaToJson(
  PersonaCreateRequestSchema instance,
) => <String, dynamic>{
  'name': instance.name,
  'auto_tag_disabled': ?instance.autoTagDisabled,
  'persona_tags': ?instance.personaTags,
  'signature_emojis': ?instance.signatureEmojis,
  'visibility': ?instance.visibility,
  'avatar_hash': ?instance.avatarHashValue,
  'banner_hash': ?instance.bannerHashValue,
  'pronouns': ?instance.pronounsValue,
  'color': ?instance.colorValue,
  'avatar_color': ?instance.avatarColorValue,
  'bio': ?instance.bioValue,
  'external_uuid': ?instance.externalUuidValue,
};
