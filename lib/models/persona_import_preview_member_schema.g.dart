// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_import_preview_member_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaImportPreviewMemberSchema _$PersonaImportPreviewMemberSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PersonaImportPreviewMemberSchema',
  json,
  ($checkedConvert) {
    final val = PersonaImportPreviewMemberSchema._(
      name: $checkedConvert('name', (v) => v as String? ?? ''),
      pronounsValue: $checkedConvert('pronouns', (v) => v as String?),
      colorValue: $checkedConvert('color', (v) => (v as num?)?.toInt()),
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
      avatarValue: $checkedConvert(
        'avatar',
        (v) => v == null
            ? null
            : PersonaImportImageRefSchema.fromJson(v as Map<String, dynamic>),
      ),
      bannerValue: $checkedConvert(
        'banner',
        (v) => v == null
            ? null
            : PersonaImportImageRefSchema.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'pronounsValue': 'pronouns',
    'colorValue': 'color',
    'bioValue': 'bio',
    'autoTagDisabled': 'auto_tag_disabled',
    'personaTags': 'persona_tags',
    'signatureEmojis': 'signature_emojis',
    'externalUuidValue': 'external_uuid',
    'avatarValue': 'avatar',
    'bannerValue': 'banner',
  },
);

Map<String, dynamic> _$PersonaImportPreviewMemberSchemaToJson(
  PersonaImportPreviewMemberSchema instance,
) => <String, dynamic>{
  'name': instance.name,
  'auto_tag_disabled': ?instance.autoTagDisabled,
  'persona_tags': ?instance.personaTags,
  'signature_emojis': ?instance.signatureEmojis,
  'visibility': ?instance.visibility,
  'pronouns': ?instance.pronounsValue,
  'color': ?instance.colorValue,
  'bio': ?instance.bioValue,
  'external_uuid': ?instance.externalUuidValue,
  'avatar': ?instance.avatarValue,
  'banner': ?instance.bannerValue,
};
