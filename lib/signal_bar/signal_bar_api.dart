// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

import '../models/channel_signal_bar_enabled_request_schema.dart';
import '../models/channel_signal_toggle_request_schema.dart';
import '../models/channel_signals_response_schema.dart';
import '../models/guild_signal_bar_settings_schema.dart';
import '../models/guild_signal_bar_settings_schema_input.dart';
import '../models/signal_bar_response_schema.dart';
import '../models/signal_bar_update_request_schema.dart';
import '../models/snowflake_type.dart';
import '../models/user_signals_response_schema.dart';
import '../models/user_signals_restore_response_schema.dart';
import '../models/user_signals_update_request_schema.dart';

part 'signal_bar_api.g.dart';

@RestApi()
abstract class SignalBarApi {
  factory SignalBarApi(Dio dio, {String? baseUrl}) = _SignalBarApi;

  /// Switch the signal bar on or off in a DM.
  ///
  /// Switches the signal bar on or off in a direct message. Anyone in a one-on-one or group DM may do this. Community channels are configured through the community endpoint.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [body] - Name not received - field will be skipped.
  @PUT('/channels/{channel_id}/signal-bar')
  Future<void> setDmSignalBarEnabled({
    @Path('channel_id') required SnowflakeType channelId,
    @Body() required ChannelSignalBarEnabledRequestSchema body,
  });

  /// List active channel signals.
  ///
  /// Retrieves everyone currently giving a signal in the channel.
  ///
  /// [channelId] - The ID of the channel.
  @GET('/channels/{channel_id}/signals')
  Future<ChannelSignalsResponseSchema> listChannelSignals({
    @Path('channel_id') required SnowflakeType channelId,
  });

  /// Reset a signal.
  ///
  /// Turns a signal off for everyone in the channel. Requires Manage Community in a community channel, or ownership of a group DM.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [signalId] - The unique identifier of the signal within the bar.
  @DELETE('/channels/{channel_id}/signals/{signal_id}')
  Future<void> resetChannelSignal({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('signal_id') required String signalId,
  });

  /// Give a signal.
  ///
  /// Turns a signal on in the channel for the authenticated user, or updates the persona they are signalling as. An account holds at most one entry per signal.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [signalId] - The unique identifier of the signal within the bar.
  ///
  /// [body] - Name not received - field will be skipped.
  @PUT('/channels/{channel_id}/signals/{signal_id}/@me')
  Future<void> activateChannelSignal({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('signal_id') required String signalId,
    @Body() ChannelSignalToggleRequestSchema? body,
  });

  /// Withdraw a signal.
  ///
  /// Turns a signal off in the channel for the authenticated user.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [signalId] - The unique identifier of the signal within the bar.
  @DELETE('/channels/{channel_id}/signals/{signal_id}/@me')
  Future<void> deactivateChannelSignal({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('signal_id') required String signalId,
  });

  /// Turn off someone's signal.
  ///
  /// Turns one account's signal off. Requires Manage Community in a community channel, or ownership of a group DM.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [signalId] - The unique identifier of the signal within the bar.
  ///
  /// [userId] - The ID of the user whose signal is turned off.
  @DELETE('/channels/{channel_id}/signals/{signal_id}/users/{user_id}')
  Future<void> removeChannelSignalUser({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('signal_id') required String signalId,
    @Path('user_id') required SnowflakeType userId,
  });

  /// Get where the signal bar is switched on in a community.
  ///
  /// Retrieves the community default, per-category defaults and per-channel exceptions. Requires Manage Community.
  ///
  /// [guildId] - The ID of the guild.
  @GET('/guilds/{guild_id}/signal-bar/channels')
  Future<GuildSignalBarSettingsSchema> getGuildSignalBarChannels({
    @Path('guild_id') required SnowflakeType guildId,
  });

  /// Choose where the signal bar is switched on in a community.
  ///
  /// Replaces the community default, per-category defaults and per-channel exceptions. Channels without their own setting inherit from their category, then from the community. Requires Manage Community.
  ///
  /// [guildId] - The ID of the guild.
  ///
  /// [body] - Name not received - field will be skipped.
  @PUT('/guilds/{guild_id}/signal-bar/channels')
  Future<GuildSignalBarSettingsSchema> updateGuildSignalBarChannels({
    @Path('guild_id') required SnowflakeType guildId,
    @Body() required GuildSignalBarSettingsSchemaInput body,
  });

  /// Get signal bar.
  ///
  /// Retrieves the instance-wide signal bar and whether the authenticated user may edit it.
  @GET('/instance/signal-bar')
  Future<SignalBarResponseSchema> getSignalBar();

  /// Update signal bar.
  ///
  /// Replaces the ordered list of signals. Requires Manage Community in the home community that owns the bar.
  ///
  /// [body] - Name not received - field will be skipped.
  @PUT('/instance/signal-bar')
  Future<SignalBarResponseSchema> updateSignalBar({
    @Body() required SignalBarUpdateRequestSchema body,
  });

  /// List my signals everywhere.
  ///
  /// Retrieves every chat where the authenticated user has a signal on, newest first, and whether their last change everywhere can be restored.
  @GET('/users/@me/signals')
  Future<UserSignalsResponseSchema> listMySignals();

  /// Set a signal everywhere.
  ///
  /// Sets one signal in every chat where the authenticated user has a signal on, and in the open chat, turning their other signals there off; each chat keeps the persona its signal showed. With a null signal, turns every signal of theirs off. Only signals the bar allows everywhere can be set. Saves what it replaced, for restore.
  ///
  /// [body] - Name not received - field will be skipped.
  @PUT('/users/@me/signals')
  Future<UserSignalsResponseSchema> setMySignalsEverywhere({
    @Body() required UserSignalsUpdateRequestSchema body,
  });

  /// Preview restoring my signals.
  ///
  /// Shows, chat by chat, what restoring would put back in place of what is on now, and which chats it would leave out.
  @GET('/users/@me/signals/restore')
  Future<UserSignalsRestoreResponseSchema> getMySignalsRestore();

  /// Restore my signals.
  ///
  /// Puts back what the last change everywhere replaced, in the chats where the user may still light signals. A restore is itself a change everywhere, so restoring again swaps back.
  @POST('/users/@me/signals/restore')
  Future<UserSignalsResponseSchema> restoreMySignals();
}
