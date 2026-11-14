// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_response_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaResponseSchema _$PersonaResponseSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PersonaResponseSchema',
  json,
  ($checkedConvert) {
    final val = PersonaResponseSchema(
      id: $checkedConvert('id', (v) => v as SnowflakeStringType? ?? ''),
      name: $checkedConvert('name', (v) => v as String? ?? ''),
      visibility: $checkedConvert(
        'visibility',
        (v) => v == null
            ? PersonaVisibilitySchema.$unknown
            : PersonaVisibilitySchema.fromJson(v as String),
      ),
      createdAt: $checkedConvert('created_at', (v) => v as String? ?? ''),
      updatedAt: $checkedConvert('updated_at', (v) => v as String? ?? ''),
      autoTagDisabled: $checkedConvert(
        'auto_tag_disabled',
        (v) => v as bool? ?? false,
      ),
      personaTags: $checkedConvert(
        'persona_tags',
        (v) =>
            (v as List<dynamic>?)
                ?.map(
                  (e) => PersonaTagSchema.fromJson(e as Map<String, dynamic>),
                )
                .toList() ??
            const [],
      ),
      signatureEmojis: $checkedConvert(
        'signature_emojis',
        (v) =>
            (v as List<dynamic>?)
                ?.map(
                  (e) =>
                      SignatureEmojiSchema.fromJson(e as Map<String, dynamic>),
                )
                .toList() ??
            const [],
      ),
      useCount: $checkedConvert('use_count', (v) => (v as num?)?.toInt() ?? 0),
      avatarHash: $checkedConvert(
        'avatar_hash',
        (v) => v as PersonaAssetHashType?,
      ),
      bannerHash: $checkedConvert(
        'banner_hash',
        (v) => v as PersonaAssetHashType?,
      ),
      pronouns: $checkedConvert('pronouns', (v) => v as String?),
      color: $checkedConvert('color', (v) => (v as num?)?.toInt()),
      avatarColor: $checkedConvert('avatar_color', (v) => (v as num?)?.toInt()),
      bio: $checkedConvert('bio', (v) => v as String?),
      lastUsedAtMs: $checkedConvert('last_used_at_ms', (v) => v as String?),
      externalUuid: $checkedConvert('external_uuid', (v) => v as String?),
      deletedAt: $checkedConvert(
        'deleted_at',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'createdAt': 'created_at',
    'updatedAt': 'updated_at',
    'autoTagDisabled': 'auto_tag_disabled',
    'personaTags': 'persona_tags',
    'signatureEmojis': 'signature_emojis',
    'useCount': 'use_count',
    'avatarHash': 'avatar_hash',
    'bannerHash': 'banner_hash',
    'avatarColor': 'avatar_color',
    'lastUsedAtMs': 'last_used_at_ms',
    'externalUuid': 'external_uuid',
    'deletedAt': 'deleted_at',
  },
);

Map<String, dynamic> _$PersonaResponseSchemaToJson(
  PersonaResponseSchema instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'avatar_hash': ?instance.avatarHash,
  'banner_hash': ?instance.bannerHash,
  'pronouns': ?instance.pronouns,
  'color': ?instance.color,
  'avatar_color': ?instance.avatarColor,
  'bio': ?instance.bio,
  'auto_tag_disabled': instance.autoTagDisabled,
  'persona_tags': instance.personaTags,
  'signature_emojis': instance.signatureEmojis,
  'use_count': instance.useCount,
  'last_used_at_ms': ?instance.lastUsedAtMs,
  'visibility': instance.visibility,
  'external_uuid': ?instance.externalUuid,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'deleted_at': ?instance.deletedAt?.toIso8601String(),
};
