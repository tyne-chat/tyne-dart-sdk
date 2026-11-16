// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_persona_mention_item_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelPersonaMentionItemSchema _$ChannelPersonaMentionItemSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ChannelPersonaMentionItemSchema',
  json,
  ($checkedConvert) {
    final val = ChannelPersonaMentionItemSchema(
      id: $checkedConvert('id', (v) => v as SnowflakeStringType? ?? ''),
      name: $checkedConvert('name', (v) => v as String? ?? ''),
      visibility: $checkedConvert(
        'visibility',
        (v) => v == null
            ? PersonaVisibilitySchema.$unknown
            : PersonaVisibilitySchema.fromJson(v as String),
      ),
      ownerUserId: $checkedConvert(
        'owner_user_id',
        (v) => v as SnowflakeStringType? ?? '',
      ),
      ownerUsername: $checkedConvert(
        'owner_username',
        (v) => v as String? ?? '',
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
      displayTagText: $checkedConvert('display_tag_text', (v) => v as String?),
      displayTagIcon: $checkedConvert(
        'display_tag_icon',
        (v) => v as PersonaAssetHashType?,
      ),
      pronouns: $checkedConvert('pronouns', (v) => v as String?),
      color: $checkedConvert('color', (v) => (v as num?)?.toInt()),
      avatarColor: $checkedConvert('avatar_color', (v) => (v as num?)?.toInt()),
      bio: $checkedConvert('bio', (v) => v as String?),
      lastUsedAtMs: $checkedConvert('last_used_at_ms', (v) => v as String?),
      ownerDiscriminator: $checkedConvert(
        'owner_discriminator',
        (v) => v as String?,
      ),
      ownerGlobalName: $checkedConvert(
        'owner_global_name',
        (v) => v as String?,
      ),
      ownerNickname: $checkedConvert('owner_nickname', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'ownerUserId': 'owner_user_id',
    'ownerUsername': 'owner_username',
    'useCount': 'use_count',
    'avatarHash': 'avatar_hash',
    'bannerHash': 'banner_hash',
    'displayTagText': 'display_tag_text',
    'displayTagIcon': 'display_tag_icon',
    'avatarColor': 'avatar_color',
    'lastUsedAtMs': 'last_used_at_ms',
    'ownerDiscriminator': 'owner_discriminator',
    'ownerGlobalName': 'owner_global_name',
    'ownerNickname': 'owner_nickname',
  },
);

Map<String, dynamic> _$ChannelPersonaMentionItemSchemaToJson(
  ChannelPersonaMentionItemSchema instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'avatar_hash': ?instance.avatarHash,
  'banner_hash': ?instance.bannerHash,
  'display_tag_text': ?instance.displayTagText,
  'display_tag_icon': ?instance.displayTagIcon,
  'pronouns': ?instance.pronouns,
  'color': ?instance.color,
  'avatar_color': ?instance.avatarColor,
  'bio': ?instance.bio,
  'visibility': instance.visibility,
  'use_count': instance.useCount,
  'last_used_at_ms': ?instance.lastUsedAtMs,
  'owner_user_id': instance.ownerUserId,
  'owner_username': instance.ownerUsername,
  'owner_discriminator': ?instance.ownerDiscriminator,
  'owner_global_name': ?instance.ownerGlobalName,
  'owner_nickname': ?instance.ownerNickname,
};
