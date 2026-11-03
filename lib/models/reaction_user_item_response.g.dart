// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reaction_user_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReactionUserItemResponse _$ReactionUserItemResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ReactionUserItemResponse',
  json,
  ($checkedConvert) {
    final val = ReactionUserItemResponse(
      id: $checkedConvert('id', (v) => v as SnowflakeStringType? ?? ''),
      username: $checkedConvert('username', (v) => v as String? ?? ''),
      discriminator: $checkedConvert(
        'discriminator',
        (v) => v as String? ?? '',
      ),
      globalName: $checkedConvert('global_name', (v) => v as String?),
      avatar: $checkedConvert('avatar', (v) => v as String?),
      avatarColor: $checkedConvert('avatar_color', (v) => (v as num?)?.toInt()),
      flags: $checkedConvert('flags', (v) => (v as num?)?.toInt() ?? 0),
      bot: $checkedConvert('bot', (v) => v as bool?),
      system: $checkedConvert('system', (v) => v as bool?),
      mentionFlags: $checkedConvert(
        'mention_flags',
        (v) => v == null
            ? null
            : MentionReplyPreferences.fromJson((v as num).toInt()),
      ),
      subprofile: $checkedConvert(
        'subprofile',
        (v) => v == null
            ? null
            : MessageSubprofileResponseSchema.fromJson(
                v as Map<String, dynamic>,
              ),
      ),
      personaId: $checkedConvert(
        'persona_id',
        (v) => v as SnowflakeStringType?,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'globalName': 'global_name',
    'avatarColor': 'avatar_color',
    'mentionFlags': 'mention_flags',
    'personaId': 'persona_id',
  },
);

Map<String, dynamic> _$ReactionUserItemResponseToJson(
  ReactionUserItemResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'username': instance.username,
  'discriminator': instance.discriminator,
  'global_name': instance.globalName,
  'avatar': instance.avatar,
  'avatar_color': instance.avatarColor,
  'bot': ?instance.bot,
  'system': ?instance.system,
  'flags': instance.flags,
  'mention_flags': ?instance.mentionFlags,
  'subprofile': ?instance.subprofile,
  'persona_id': ?instance.personaId,
};
