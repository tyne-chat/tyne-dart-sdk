// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'server_list_buttons_schema.dart';

part 'instance_community_schema.g.dart';

/// Community topology and direct-message policy for this instance
@JsonSerializable()
class InstanceCommunitySchema {
  const InstanceCommunitySchema({
    required this.singleCommunity,
    required this.singleCommunityGuildId,
    required this.directMessagesDisabled,
    required this.guildCreateAccess,
    this.communityCreationStaffOnly = false,
    this.signalBarGuildId,
    this.serverListButtons,
  });

  factory InstanceCommunitySchema.fromJson(Map<String, Object?> json) =>
      _$InstanceCommunitySchemaFromJson(json);

  /// Whether this instance runs as a single community that every user automatically joins
  @JsonKey(name: 'single_community', defaultValue: false)
  final bool singleCommunity;

  /// The stock community guild ID when single-community mode is enabled
  @JsonKey(includeIfNull: true, name: 'single_community_guild_id')
  final String? singleCommunityGuildId;

  /// The home community whose managers configure the instance-wide signal bar
  @JsonKey(includeIfNull: false, name: 'signal_bar_guild_id')
  final String? signalBarGuildId;

  /// Whether direct messages and friend requests are disabled instance-wide
  @JsonKey(name: 'direct_messages_disabled', defaultValue: false)
  final bool directMessagesDisabled;

  /// Whether every account can create communities. When false, only admins and accounts granted the feature_guild_create limit can
  @JsonKey(name: 'guild_create_access', defaultValue: false)
  final bool guildCreateAccess;

  /// Whether community creation is restricted to staff members
  @JsonKey(name: 'community_creation_staff_only')
  final bool communityCreationStaffOnly;
  @JsonKey(includeIfNull: false, name: 'server_list_buttons')
  final ServerListButtonsSchema? serverListButtons;

  Map<String, Object?> toJson() => _$InstanceCommunitySchemaToJson(this);
}
