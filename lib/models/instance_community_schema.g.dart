// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_community_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstanceCommunitySchema _$InstanceCommunitySchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'InstanceCommunitySchema',
  json,
  ($checkedConvert) {
    final val = InstanceCommunitySchema(
      singleCommunity: $checkedConvert(
        'single_community',
        (v) => v as bool? ?? false,
      ),
      singleCommunityGuildId: $checkedConvert(
        'single_community_guild_id',
        (v) => v as String?,
      ),
      directMessagesDisabled: $checkedConvert(
        'direct_messages_disabled',
        (v) => v as bool? ?? false,
      ),
      guildCreateAccess: $checkedConvert(
        'guild_create_access',
        (v) => v as bool? ?? false,
      ),
      signalBarGuildId: $checkedConvert(
        'signal_bar_guild_id',
        (v) => v as String?,
      ),
      friendsDisabled: $checkedConvert('friends_disabled', (v) => v as bool?),
      serverListButtons: $checkedConvert(
        'server_list_buttons',
        (v) => v == null
            ? null
            : ServerListButtonsSchema.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'singleCommunity': 'single_community',
    'singleCommunityGuildId': 'single_community_guild_id',
    'directMessagesDisabled': 'direct_messages_disabled',
    'guildCreateAccess': 'guild_create_access',
    'signalBarGuildId': 'signal_bar_guild_id',
    'friendsDisabled': 'friends_disabled',
    'serverListButtons': 'server_list_buttons',
  },
);

Map<String, dynamic> _$InstanceCommunitySchemaToJson(
  InstanceCommunitySchema instance,
) => <String, dynamic>{
  'single_community': instance.singleCommunity,
  'single_community_guild_id': instance.singleCommunityGuildId,
  'signal_bar_guild_id': ?instance.signalBarGuildId,
  'direct_messages_disabled': instance.directMessagesDisabled,
  'friends_disabled': ?instance.friendsDisabled,
  'guild_create_access': instance.guildCreateAccess,
  'server_list_buttons': ?instance.serverListButtons,
};
