// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_persona_response_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicPersonaResponseSchema _$PublicPersonaResponseSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PublicPersonaResponseSchema',
  json,
  ($checkedConvert) {
    final val = PublicPersonaResponseSchema(
      id: $checkedConvert('id', (v) => v as SnowflakeStringType? ?? ''),
      name: $checkedConvert('name', (v) => v as String? ?? ''),
      visibility: $checkedConvert(
        'visibility',
        (v) => v == null
            ? PersonaVisibilitySchema.$unknown
            : PersonaVisibilitySchema.fromJson(v as String),
      ),
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
    );
    return val;
  },
  fieldKeyMap: const {
    'avatarHash': 'avatar_hash',
    'bannerHash': 'banner_hash',
    'avatarColor': 'avatar_color',
  },
);

Map<String, dynamic> _$PublicPersonaResponseSchemaToJson(
  PublicPersonaResponseSchema instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'avatar_hash': ?instance.avatarHash,
  'banner_hash': ?instance.bannerHash,
  'pronouns': ?instance.pronouns,
  'color': ?instance.color,
  'avatar_color': ?instance.avatarColor,
  'bio': ?instance.bio,
  'visibility': instance.visibility,
};
