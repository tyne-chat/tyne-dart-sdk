// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

import '../models/guild_command_count_list_response_schema.dart';
import '../models/guild_command_count_set_request_schema.dart';
import '../models/guild_command_create_request_schema.dart';
import '../models/guild_command_list_response_schema.dart';
import '../models/guild_command_preview_request_schema.dart';
import '../models/guild_command_preview_response_schema.dart';
import '../models/guild_command_response_schema.dart';
import '../models/guild_command_run_request_schema.dart';
import '../models/guild_command_update_request_schema.dart';
import '../models/message_response_schema.dart';
import '../models/snowflake_type.dart';

part 'guild_commands_api.g.dart';

@RestApi()
abstract class GuildCommandsApi {
  factory GuildCommandsApi(Dio dio, {String? baseUrl}) = _GuildCommandsApi;

  /// Run guild command.
  ///
  /// Fills in a command's template and posts the result as an ordinary message from the caller. The caller must be a member of the command's community, and needs Use External Commands in another community's channel.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [commandId] - The ID of the command.
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/channels/{channel_id}/commands/{command_id}')
  Future<MessageResponseSchema> runGuildCommand({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('command_id') required SnowflakeType commandId,
    @Body() required GuildCommandRunRequestSchema body,
  });

  /// List guild commands.
  ///
  /// Retrieves a community's commands. Templates are included only for members who may create or manage commands.
  ///
  /// [guildId] - The ID of the guild.
  @GET('/guilds/{guild_id}/commands')
  Future<GuildCommandListResponseSchema> listGuildCommands({
    @Path('guild_id') required SnowflakeType guildId,
  });

  /// Create guild command.
  ///
  /// Creates a command. Requires Create Commands.
  ///
  /// [guildId] - The ID of the guild.
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/guilds/{guild_id}/commands')
  Future<GuildCommandResponseSchema> createGuildCommand({
    @Path('guild_id') required SnowflakeType guildId,
    @Body() required GuildCommandCreateRequestSchema body,
  });

  /// Preview guild command.
  ///
  /// Fills in a template without posting anything. A template with a problem is reported in `issue`, with a 200. Requires Create Commands or Manage Commands.
  ///
  /// [guildId] - The ID of the guild.
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/guilds/{guild_id}/commands/preview')
  Future<GuildCommandPreviewResponseSchema> previewGuildCommand({
    @Path('guild_id') required SnowflakeType guildId,
    @Body() required GuildCommandPreviewRequestSchema body,
  });

  /// Update guild command.
  ///
  /// Updates a command. Its creator needs Create Commands; anyone else needs Manage Commands.
  ///
  /// [guildId] - The ID of the guild.
  ///
  /// [commandId] - The ID of the command.
  ///
  /// [body] - Name not received - field will be skipped.
  @PATCH('/guilds/{guild_id}/commands/{command_id}')
  Future<GuildCommandResponseSchema> updateGuildCommand({
    @Path('guild_id') required SnowflakeType guildId,
    @Path('command_id') required SnowflakeType commandId,
    @Body() GuildCommandUpdateRequestSchema? body,
  });

  /// Delete guild command.
  ///
  /// Deletes a command. Its creator needs Create Commands; anyone else needs Manage Commands.
  ///
  /// [guildId] - The ID of the guild.
  ///
  /// [commandId] - The ID of the command.
  @DELETE('/guilds/{guild_id}/commands/{command_id}')
  Future<void> deleteGuildCommand({
    @Path('guild_id') required SnowflakeType guildId,
    @Path('command_id') required SnowflakeType commandId,
  });

  /// Reset guild command counter.
  ///
  /// Deletes all of a counter's counts, for those who may edit the command.
  ///
  /// [guildId] - The ID of the guild.
  ///
  /// [commandId] - The ID of the command.
  ///
  /// [counterId] - The ID of the counter.
  @DELETE(
    '/guilds/{guild_id}/commands/{command_id}/counters/{counter_id}/counts',
  )
  Future<void> resetGuildCommandCounter({
    @Path('guild_id') required SnowflakeType guildId,
    @Path('command_id') required SnowflakeType commandId,
    @Path('counter_id') required SnowflakeType counterId,
  });

  /// List guild command counts.
  ///
  /// Lists a command's counts, for those who may edit it.
  ///
  /// [guildId] - The ID of the guild.
  ///
  /// [commandId] - The ID of the command.
  @GET('/guilds/{guild_id}/commands/{command_id}/counts')
  Future<GuildCommandCountListResponseSchema> listGuildCommandCounts({
    @Path('guild_id') required SnowflakeType guildId,
    @Path('command_id') required SnowflakeType commandId,
  });

  /// Set guild command count.
  ///
  /// Sets one count, for those who may edit the command.
  ///
  /// [guildId] - The ID of the guild.
  ///
  /// [commandId] - The ID of the command.
  ///
  /// [body] - Name not received - field will be skipped.
  @PUT('/guilds/{guild_id}/commands/{command_id}/counts')
  Future<void> setGuildCommandCount({
    @Path('guild_id') required SnowflakeType guildId,
    @Path('command_id') required SnowflakeType commandId,
    @Body() required GuildCommandCountSetRequestSchema body,
  });

  /// List the commands of all my communities.
  ///
  /// Retrieves the commands of every community the user is a member of, without their templates, for the message composer.
  @GET('/users/@me/guild-commands')
  Future<GuildCommandListResponseSchema> listMyGuildCommands();
}
