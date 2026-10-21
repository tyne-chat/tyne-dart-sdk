// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:convert';

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

import '../models/active_threads_response.dart';
import '../models/add_reaction_body_schema.dart';
import '../models/allowed_mentions_request.dart';
import '../models/archived_threads_response.dart';
import '../models/bulk_delete_messages_request.dart';
import '../models/bulk_message_fetch_request.dart';
import '../models/bulk_message_fetch_response.dart';
import '../models/call_eligibility_response.dart';
import '../models/call_ring_body_schema.dart';
import '../models/call_update_body_schema.dart';
import '../models/channel_follow_request.dart';
import '../models/channel_follower_stats_response.dart';
import '../models/channel_persona_mentions_response_schema.dart';
import '../models/channel_pins_response.dart';
import '../models/channel_response.dart';
import '../models/channel_slowmode_state_response.dart';
import '../models/channel_update_request_body.dart';
import '../models/complete_multipart_attachment_upload_request.dart';
import '../models/complete_multipart_attachment_upload_response.dart';
import '../models/crosspost_source_response.dart';
import '../models/followed_channel_response.dart';
import '../models/forum_tag_request.dart';
import '../models/forum_tag_setting_schema.dart';
import '../models/indicate_typing_request_schema.dart';
import '../models/legacy_message_subprofile_request_schema.dart';
import '../models/message_ack_request.dart';
import '../models/message_content_request.dart';
import '../models/message_flags.dart';
import '../models/message_list_response.dart';
import '../models/message_nonce_request.dart';
import '../models/message_purge_response.dart';
import '../models/message_reference_request.dart';
import '../models/message_response_schema.dart';
import '../models/object0.dart';
import '../models/object1.dart';
import '../models/object2.dart';
import '../models/permission_overwrite_create_request.dart';
import '../models/presigned_attachment_upload_request.dart';
import '../models/presigned_attachment_upload_response.dart';
import '../models/reaction_users_list_response.dart';
import '../models/reaction_users_page_response.dart';
import '../models/rich_embed_request.dart';
import '../models/rtc_region_list_response.dart';
import '../models/snowflake_string_type.dart';
import '../models/snowflake_type.dart';
import '../models/start_forum_thread_response.dart';
import '../models/start_thread_from_message_request.dart';
import '../models/stream_preview_response.dart';
import '../models/stream_preview_upload_body_schema.dart';
import '../models/stream_preview_upload_url_body_schema.dart';
import '../models/stream_preview_upload_url_response_schema.dart';
import '../models/stream_update_body_schema.dart';
import '../models/sudo_verification_schema.dart';
import '../models/thread_channel_response.dart';
import '../models/thread_member_list_response.dart';
import '../models/thread_member_response.dart';
import '../models/thread_member_settings_request.dart';
import '../models/thread_post_data_request.dart';
import '../models/thread_post_data_response.dart';
import '../models/thread_search_result.dart';
import '../models/thread_search_sort_by_schema.dart';
import '../models/thread_search_sort_order_schema.dart';

part 'channels_api.g.dart';

@RestApi()
abstract class ChannelsApi {
  factory ChannelsApi(Dio dio, {String? baseUrl}) = _ChannelsApi;

  /// List messages from multiple channels.
  ///
  /// Fetches bounded message windows from multiple channels in one request. Each entry uses the same pagination semantics as the single-channel message list endpoint.
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/channels/messages/bulk')
  Future<BulkMessageFetchResponse> bulkListChannelMessages({
    @Body() required BulkMessageFetchRequest body,
  });

  /// Fetch a channel.
  ///
  /// Retrieves the channel object including metadata, member list, and settings. Requires the user to be a member of the channel with view permissions.
  ///
  /// [channelId] - The ID of the channel.
  @GET('/channels/{channel_id}')
  Future<ChannelResponse> getChannel({
    @Path('channel_id') required SnowflakeType channelId,
  });

  /// Update channel settings.
  ///
  /// Modifies channel properties such as name, description, topic, nsfw flag, and slowmode. Requires management permissions in the channel.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [body] - Name not received - field will be skipped.
  @PATCH('/channels/{channel_id}')
  Future<ChannelResponse> updateChannel({
    @Path('channel_id') required SnowflakeType channelId,
    @Body() ChannelUpdateRequestBody? body,
  });

  /// Delete a channel.
  ///
  /// Permanently removes a channel and all its content. Only server administrators or the channel owner can delete channels. When `delete_messages` is set on a group DM, the caller's authored messages in the group are deleted before leaving and sudo mode verification is required.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [silent] - Whether to suppress the system message when leaving a group DM.
  ///
  /// [deleteMessages] - When leaving a group DM, also delete all messages the caller has sent in the channel.
  ///
  /// [body] - Name not received - field will be skipped.
  @DELETE('/channels/{channel_id}')
  Future<void> deleteChannel({
    @Path('channel_id') required SnowflakeType channelId,
    @Body() SudoVerificationSchema? body,
    @Query('silent') String? silent = 'false',
    @Query('delete_messages') String? deleteMessages = 'false',
  });

  /// Request presigned attachment upload URLs.
  ///
  /// Returns presigned upload URLs for message attachments in the target channel. Small files (<=10MB) return a singlepart PUT URL; larger files return a multipart plan (upload_id + per-part URLs) that the client should complete via the matching /attachments/complete endpoint. Requires message send and attachment permissions in guild channels.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/channels/{channel_id}/attachments')
  Future<PresignedAttachmentUploadResponse>
  requestPresignedMessageAttachmentUploads({
    @Path('channel_id') required SnowflakeType channelId,
    @Body() required PresignedAttachmentUploadRequest body,
  });

  /// Finalize multipart attachment uploads.
  ///
  /// Finalizes one or more multipart attachment uploads. Called after all chunks have been PUT to their presigned URLs. The server lists the uploaded parts and issues S3 CompleteMultipartUpload. Returns the finalized upload keys, which can be referenced in a subsequent message create request.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/channels/{channel_id}/attachments/complete')
  Future<CompleteMultipartAttachmentUploadResponse>
  completeMultipartMessageAttachmentUploads({
    @Path('channel_id') required SnowflakeType channelId,
    @Body() required CompleteMultipartAttachmentUploadRequest body,
  });

  /// Get call eligibility status.
  ///
  /// Checks whether a call can be initiated in the channel and if there is an active call. Returns ringable status and silent mode flag.
  ///
  /// [channelId] - The ID of the channel.
  @GET('/channels/{channel_id}/call')
  Future<CallEligibilityResponse> getCallEligibility({
    @Path('channel_id') required SnowflakeType channelId,
  });

  /// Update call region.
  ///
  /// Changes the voice server region for an active call to optimise latency and connection quality.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [body] - Name not received - field will be skipped.
  @PATCH('/channels/{channel_id}/call')
  Future<void> updateCallRegion({
    @Path('channel_id') required SnowflakeType channelId,
    @Body() CallUpdateBodySchema? body,
  });

  /// End call session.
  ///
  /// Terminates an active voice call in the channel. Records the call end state for all participants.
  ///
  /// [channelId] - The ID of the channel.
  @POST('/channels/{channel_id}/call/end')
  Future<void> endCall({@Path('channel_id') required SnowflakeType channelId});

  /// Ring call recipients.
  ///
  /// Sends ringing notifications to specified users in a call. If no recipients are specified, rings all channel members.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/channels/{channel_id}/call/ring')
  Future<void> ringCallRecipients({
    @Path('channel_id') required SnowflakeType channelId,
    @Body() CallRingBodySchema? body,
  });

  /// Stop ringing call recipients.
  ///
  /// Stops ringing notifications for specified users in a call. Allows callers to stop notifying users who have declined or not responded.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/channels/{channel_id}/call/stop-ringing')
  Future<void> stopRingingCallRecipients({
    @Path('channel_id') required SnowflakeType channelId,
    @Body() CallRingBodySchema? body,
  });

  /// Get announcement channel follower stats.
  ///
  /// Returns how many channels and distinct guilds follow an announcement channel. Requires View Channel on the announcement channel.
  ///
  /// [channelId] - The ID of the channel.
  @GET('/channels/{channel_id}/follower-stats')
  Future<ChannelFollowerStatsResponse> getChannelFollowerStats({
    @Path('channel_id') required SnowflakeType channelId,
  });

  /// Follow an announcement channel.
  ///
  /// Follows an announcement channel into a text channel. Creates a channel follower webhook in the target channel that receives every message published in the announcement channel. Requires Manage Webhooks in the target channel and View Channel on the announcement channel.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/channels/{channel_id}/followers')
  Future<FollowedChannelResponse> followChannel({
    @Path('channel_id') required SnowflakeType channelId,
    @Body() required ChannelFollowRequest body,
  });

  /// List messages in a channel.
  ///
  /// Retrieves a paginated list of messages from a channel. User must have permission to view the channel. Supports pagination via limit, before, after, and around parameters. Returns messages in reverse chronological order (newest first).
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [limit] - Number of messages to return (1-100, default 50).
  ///
  /// [before] - Get messages before this message ID.
  ///
  /// [after] - Get messages after this message ID.
  ///
  /// [around] - Get messages around this message ID.
  @GET('/channels/{channel_id}/messages')
  Future<MessageListResponse> listMessages({
    @Path('channel_id') required SnowflakeType channelId,
    @Query('before') SnowflakeType? before,
    @Query('after') SnowflakeType? after,
    @Query('around') SnowflakeType? around,
    @Query('limit') String? limit = '50',
  });

  /// Send a message.
  ///
  /// Sends a new message to a channel. Requires permission to send messages in the target channel. Supports text content, embeds, attachments (multipart), and mentions. Returns the created message object with full details.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [content] - Name not received - field will be skipped.
  /// Name not received - field will be skipped.
  ///
  /// [embeds] - Array of embed objects to include in the message.
  /// Name not received - field will be skipped.
  ///
  /// [attachments] - Array of attachment objects.
  /// Name not received - field will be skipped.
  ///
  /// [messageReference] - Name not received - field will be skipped.
  /// Name not received - field will be skipped.
  ///
  /// [allowedMentions] - Name not received - field will be skipped.
  /// Name not received - field will be skipped.
  ///
  /// [flags] - Message flags bitfield.
  /// Name not received - field will be skipped.
  ///
  /// [nonce] - Name not received - field will be skipped.
  ///
  /// [favoriteMemeId] - Name not received - field will be skipped.
  /// Name not received - field will be skipped.
  ///
  /// [stickerIds] - Name not received - field will be skipped.
  /// Name not received - field will be skipped.
  ///
  /// [tts] - Whether this is a text-to-speech message.
  /// Name not received - field will be skipped.
  ///
  /// [personaId] - Name not received - field will be skipped.
  /// Name not received - field will be skipped.
  ///
  /// [subprofile] - Name not received - field will be skipped.
  /// Name not received - field will be skipped.
  @MultiPart()
  @POST('/channels/{channel_id}/messages')
  Future<MessageResponseSchema> sendMessage({
    @Path('channel_id') required SnowflakeType channelId,
    @Part(name: 'flags') MessageFlags? flags = 0,
    @Part(name: 'content') MessageContentRequest? content,
    @Part(name: 'embeds') List<RichEmbedRequest>? embeds,
    @Part(name: 'attachments') List<Object0>? attachments,
    @Part(name: 'message_reference') MessageReferenceRequest? messageReference,
    @Part(name: 'allowed_mentions') AllowedMentionsRequest? allowedMentions,
    @Part(name: 'nonce') MessageNonceRequest? nonce,
    @Part(name: 'favorite_meme_id') SnowflakeType? favoriteMemeId,
    @Part(name: 'sticker_ids') List<SnowflakeType>? stickerIds,
    @Part(name: 'tts') bool? tts,
    @Part(name: 'persona_id') SnowflakeType? personaId,
    @Part(name: 'subprofile') LegacyMessageSubprofileRequestSchema? subprofile,
  });

  /// Clear channel read state.
  ///
  /// Deprecated. Has no effect on the read state. Returns 204 No Content.
  ///
  /// [channelId] - The ID of the channel.
  @Deprecated('This method is marked as deprecated')
  @DELETE('/channels/{channel_id}/messages/ack')
  Future<void> clearChannelReadState({
    @Path('channel_id') required SnowflakeType channelId,
  });

  /// Bulk delete messages.
  ///
  /// Deletes multiple messages at once. Requires moderation or admin permissions. Commonly used for message cleanup. Messages from different authors can be deleted together. Returns 204 No Content on success.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/channels/{channel_id}/messages/bulk-delete')
  Future<void> bulkDeleteMessages({
    @Path('channel_id') required SnowflakeType channelId,
    @Body() required BulkDeleteMessagesRequest body,
  });

  /// Bulk delete my messages in channel.
  ///
  /// Deletes every message the caller has authored in the specified channel and in its threads, active and archived. When the channel is a thread, only that thread is cleared. Requires sudo mode verification. Returns 202 Accepted once matching messages have been removed.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/channels/{channel_id}/messages/bulk-delete-mine')
  Future<void> bulkDeleteMyMessagesInChannel({
    @Path('channel_id') required SnowflakeType channelId,
    @Body() SudoVerificationSchema? body,
  });

  /// List pinned messages.
  ///
  /// Retrieves a paginated list of messages pinned in a channel. User must have permission to view the channel. Supports pagination via limit and before parameters. Returns pinned messages with their pin timestamps.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [limit] - Maximum number of pinned messages to return (1-50).
  ///
  /// [before] - Get pinned messages before this timestamp.
  @GET('/channels/{channel_id}/messages/pins')
  Future<ChannelPinsResponse> listPinnedMessages({
    @Path('channel_id') required SnowflakeType channelId,
    @Query('limit') int? limit,
    @Query('before') String? before,
  });

  /// Purge all messages in personal notes.
  ///
  /// Deletes every message in the caller's personal notes channel. Only allowed on the authenticated user's DM_PERSONAL_NOTES channel. Returns the total number of deleted messages.
  ///
  /// [channelId] - The ID of the channel.
  @POST('/channels/{channel_id}/messages/purge')
  Future<MessagePurgeResponse> purgePersonalNotesMessages({
    @Path('channel_id') required SnowflakeType channelId,
  });

  /// Fetch a message.
  ///
  /// Retrieves a specific message by ID. User must have permission to view the channel and the message must exist. Returns full message details including content, author, reactions, and attachments.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [messageId] - The ID of the message.
  @GET('/channels/{channel_id}/messages/{message_id}')
  Future<MessageResponseSchema> getMessage({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('message_id') required SnowflakeType messageId,
  });

  /// Edit a message.
  ///
  /// Updates an existing message. Only the message author can edit messages (or admins with proper permissions). Supports updating content, embeds, and attachments. Returns the updated message object. Maintains original message ID and timestamps.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [messageId] - The ID of the message.
  ///
  /// [content] - Name not received - field will be skipped.
  /// Name not received - field will be skipped.
  ///
  /// [embeds] - Array of embed objects to include in the message.
  /// Name not received - field will be skipped.
  ///
  /// [allowedMentions] - Name not received - field will be skipped.
  /// Name not received - field will be skipped.
  ///
  /// [personaId] - Name not received - field will be skipped.
  /// Name not received - field will be skipped.
  ///
  /// [subprofile] - Name not received - field will be skipped.
  /// Name not received - field will be skipped.
  ///
  /// [flags] - Message flags bitfield.
  /// Name not received - field will be skipped.
  ///
  /// [attachments] - Array of attachment objects to keep or add.
  /// Name not received - field will be skipped.
  ///
  /// [messageSnapshots] - Per-snapshot edits aligned by index with the existing snapshots. Currently supports updating attachment metadata (title/description).
  /// Name not received - field will be skipped.
  @MultiPart()
  @PATCH('/channels/{channel_id}/messages/{message_id}')
  Future<MessageResponseSchema> editMessage({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('message_id') required SnowflakeType messageId,
    @Part(name: 'content') MessageContentRequest? content,
    @Part(name: 'embeds') List<RichEmbedRequest>? embeds,
    @Part(name: 'allowed_mentions') AllowedMentionsRequest? allowedMentions,
    @Part(name: 'persona_id') SnowflakeType? personaId,
    @Part(name: 'subprofile') LegacyMessageSubprofileRequestSchema? subprofile,
    @Part(name: 'flags') MessageFlags? flags,
    @Part(name: 'attachments') List<Object1>? attachments,
    @Part(name: 'message_snapshots') List<Object2>? messageSnapshots,
  });

  /// Delete a message.
  ///
  /// Deletes a message permanently. Only the message author can delete messages (or admins/moderators with proper permissions). Cannot be undone. Returns 204 No Content on success.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [messageId] - The ID of the message.
  @DELETE('/channels/{channel_id}/messages/{message_id}')
  Future<void> deleteMessage({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('message_id') required SnowflakeType messageId,
  });

  /// Acknowledge a message.
  ///
  /// Marks a message as read and records acknowledgement state. Only available for regular user accounts. Updates mention count if provided. Returns 204 No Content on success.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [messageId] - The ID of the message.
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/channels/{channel_id}/messages/{message_id}/ack')
  Future<void> acknowledgeMessage({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('message_id') required SnowflakeType messageId,
    @Body() MessageAckRequest? body,
  });

  /// Delete a message attachment.
  ///
  /// Removes a specific attachment from a message while keeping the message intact. Only the message author can remove attachments (or admins/moderators). Returns 204 No Content on success.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [messageId] - The ID of the message.
  ///
  /// [attachmentId] - The ID of the attachment.
  @DELETE(
    '/channels/{channel_id}/messages/{message_id}/attachments/{attachment_id}',
  )
  Future<void> deleteMessageAttachment({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('message_id') required SnowflakeType messageId,
    @Path('attachment_id') required SnowflakeType attachmentId,
  });

  /// Publish a message to following channels.
  ///
  /// Publishes a message in an announcement channel to every channel that follows it. The author needs Send Messages. Anyone else needs Send Messages and Manage Messages. Only default messages that are not replies, forwards or copies can be published, and each message can be published once. Copies are delivered asynchronously. Publishing is limited per channel (10 in a row, then one every 6 minutes) and per community (30 in a row, then one every 2 minutes). Returns the updated message with the CROSSPOSTED flag set.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [messageId] - The ID of the message.
  @POST('/channels/{channel_id}/messages/{message_id}/crosspost')
  Future<MessageResponseSchema> crosspostMessage({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('message_id') required SnowflakeType messageId,
  });

  /// Get the source community of a published message copy.
  ///
  /// Returns the public profile of the community a message copy was published from. Works on copies delivered to a following channel and on the system message posted when a channel starts following. Needs the same access as fetching the message. The response holds the community name, icon, banner, badge features, approximate counts and whether it can be joined through discovery.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [messageId] - The ID of the message.
  @GET('/channels/{channel_id}/messages/{message_id}/crosspost-source')
  Future<CrosspostSourceResponse> getMessageCrosspostSource({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('message_id') required SnowflakeType messageId,
  });

  /// Remove all reactions from message.
  ///
  /// Removes all emoji reactions from a message, regardless of emoji type or user. All reactions are permanently deleted. Requires moderator or higher permissions. Returns 204 No Content on success.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [messageId] - The ID of the message.
  @DELETE('/channels/{channel_id}/messages/{message_id}/reactions')
  Future<void> removeAllReactions({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('message_id') required SnowflakeType messageId,
  });

  /// List users who reacted with emoji.
  ///
  /// Retrieves a paginated list of users who reacted to a message with a specific emoji. Supports pagination via limit and after parameters. Returns user objects for each reaction.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [messageId] - The ID of the message.
  ///
  /// [emoji] - The emoji identifier.
  ///
  /// [limit] - Maximum number of users to return (1-100).
  ///
  /// [after] - Get users after this user ID.
  @GET('/channels/{channel_id}/messages/{message_id}/reactions/{emoji}')
  Future<ReactionUsersListResponse> listReactionUsers({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('message_id') required SnowflakeType messageId,
    @Path('emoji') required String emoji,
    @Query('limit') int? limit,
    @Query('after') SnowflakeType? after,
  });

  /// Remove all reactions with emoji.
  ///
  /// Removes all emoji reactions of a specific type from a message. All users' reactions with that emoji are deleted. Requires moderator or higher permissions. Returns 204 No Content on success.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [messageId] - The ID of the message.
  ///
  /// [emoji] - The emoji identifier.
  @DELETE('/channels/{channel_id}/messages/{message_id}/reactions/{emoji}')
  Future<void> removeAllReactionsForEmoji({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('message_id') required SnowflakeType messageId,
    @Path('emoji') required String emoji,
  });

  /// Add reaction to message.
  ///
  /// Adds an emoji reaction to a message. Each user can react once with each emoji. Cannot be used from unclaimed accounts outside personal notes. Returns 204 No Content on success.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [messageId] - The ID of the message.
  ///
  /// [emoji] - The emoji identifier.
  ///
  /// [sessionId] - The session ID for synchronization.
  ///
  /// [body] - Name not received - field will be skipped.
  @PUT('/channels/{channel_id}/messages/{message_id}/reactions/{emoji}/@me')
  Future<void> addReaction({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('message_id') required SnowflakeType messageId,
    @Path('emoji') required String emoji,
    @Query('session_id') String? sessionId,
    @Body() AddReactionBodySchema? body,
  });

  /// Remove own reaction from message.
  ///
  /// Removes your own emoji reaction from a message. Returns 204 No Content on success. Has no effect if you haven't reacted with that emoji.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [messageId] - The ID of the message.
  ///
  /// [emoji] - The emoji identifier.
  ///
  /// [sessionId] - Session ID to avoid echo.
  ///
  /// [personaId] - Persona ID whose reaction should be removed.
  @DELETE('/channels/{channel_id}/messages/{message_id}/reactions/{emoji}/@me')
  Future<void> removeOwnReaction({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('message_id') required SnowflakeType messageId,
    @Path('emoji') required String emoji,
    @Query('session_id') String? sessionId,
    @Query('persona_id') SnowflakeStringType? personaId,
  });

  /// List users who reacted with emoji.
  ///
  /// Retrieves a paginated list of users who reacted to a message with a specific emoji. The response body includes pagination metadata, including the next cursor, so clients do not need to infer it from returned users.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [messageId] - The ID of the message.
  ///
  /// [emoji] - The emoji identifier.
  ///
  /// [limit] - Maximum number of users to return (1-100).
  ///
  /// [after] - Get users after this user ID.
  @GET('/channels/{channel_id}/messages/{message_id}/reactions/{emoji}/users')
  Future<ReactionUsersPageResponse> listReactionUsersV2({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('message_id') required SnowflakeType messageId,
    @Path('emoji') required String emoji,
    @Query('limit') int? limit,
    @Query('after') SnowflakeType? after,
  });

  /// Remove reaction from message.
  ///
  /// Removes a specific user's emoji reaction from a message. Requires moderator or higher permissions to remove reactions from other users. Returns 204 No Content on success.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [messageId] - The ID of the message.
  ///
  /// [emoji] - The emoji identifier.
  ///
  /// [targetId] - The ID of the target user.
  ///
  /// [sessionId] - Session ID to avoid echo.
  ///
  /// [personaId] - Persona ID whose reaction should be removed.
  @DELETE(
    '/channels/{channel_id}/messages/{message_id}/reactions/{emoji}/{target_id}',
  )
  Future<void> removeReaction({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('message_id') required SnowflakeType messageId,
    @Path('emoji') required String emoji,
    @Path('target_id') required SnowflakeType targetId,
    @Query('session_id') String? sessionId,
    @Query('persona_id') SnowflakeStringType? personaId,
  });

  /// Start a thread from a message.
  ///
  /// Creates a public thread from an existing message in a text channel. The thread shares the ID of the message, so a message can start one thread.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [messageId] - The ID of the message.
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/channels/{channel_id}/messages/{message_id}/threads')
  Future<ThreadChannelResponse> startThreadFromMessage({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('message_id') required SnowflakeType messageId,
    @Body() required StartThreadFromMessageRequest body,
  });

  /// Set permission overwrite for channel.
  ///
  /// Creates or updates permission overrides for a role or user in the channel. Allows fine-grained control over who can view, send messages, or manage the channel.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [overwriteId] - The ID of the permission overwrite.
  ///
  /// [body] - Name not received - field will be skipped.
  @PUT('/channels/{channel_id}/permissions/{overwrite_id}')
  Future<void> setChannelPermissionOverwrite({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('overwrite_id') required SnowflakeType overwriteId,
    @Body() required PermissionOverwriteCreateRequest body,
  });

  /// Delete permission overwrite.
  ///
  /// Removes a permission override from a role or user in the channel, restoring default permissions. Requires channel management rights.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [overwriteId] - The ID of the permission overwrite.
  @DELETE('/channels/{channel_id}/permissions/{overwrite_id}')
  Future<void> deleteChannelPermissionOverwrite({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('overwrite_id') required SnowflakeType overwriteId,
  });

  /// Get persona mention candidates for a channel.
  ///
  /// Retrieves mentionable personas belonging to members of the specified channel. Only public personas of other members are returned, along with own personas.
  ///
  /// [channelId] - The ID of the channel.
  @GET('/channels/{channel_id}/persona-mentions')
  Future<ChannelPersonaMentionsResponseSchema> getChannelPersonaMentions({
    @Path('channel_id') required SnowflakeType channelId,
    @Query('q') String? q = '',
    @Query('limit') int? limit = 100,
  });

  /// Acknowledge new pin notifications.
  ///
  /// Marks all new pin notifications in a channel as acknowledged. Clears the notification badge for pinned messages. Returns 204 No Content on success.
  ///
  /// [channelId] - The ID of the channel.
  @POST('/channels/{channel_id}/pins/ack')
  Future<void> acknowledgePins({
    @Path('channel_id') required SnowflakeType channelId,
  });

  /// Pin a message.
  ///
  /// Pins a message to the channel. Requires permission to manage pins (typically moderator or higher). Pinned messages are highlighted and searchable. Returns 204 No Content on success.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [messageId] - The ID of the message.
  @PUT('/channels/{channel_id}/pins/{message_id}')
  Future<void> pinMessage({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('message_id') required SnowflakeType messageId,
  });

  /// Unpin a message.
  ///
  /// Unpins a message from the channel. Requires permission to manage pins. The message remains in the channel but is no longer highlighted. Returns 204 No Content on success.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [messageId] - The ID of the message.
  @DELETE('/channels/{channel_id}/pins/{message_id}')
  Future<void> unpinMessage({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('message_id') required SnowflakeType messageId,
  });

  /// Get forum post data.
  ///
  /// Returns the owner and first message of each requested post in a forum or media channel. Requires the read message history permission.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/channels/{channel_id}/post-data')
  Future<ThreadPostDataResponse> getChannelPostData({
    @Path('channel_id') required SnowflakeType channelId,
    @Body() required ThreadPostDataRequest body,
  });

  /// Add recipient to group DM.
  ///
  /// Adds a user to a group direct message channel. The requesting user must be a member of the group DM. Requires a solved captcha challenge (X-Captcha-Token).
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [userId] - The ID of the user.
  @PUT('/channels/{channel_id}/recipients/{user_id}')
  Future<void> addGroupDmRecipient({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('user_id') required SnowflakeType userId,
  });

  /// Remove recipient from group DM.
  ///
  /// Removes a user from a group direct message channel. The requesting user must be a member with appropriate permissions. When the caller removes themself with `delete_messages`, their authored messages in the group are deleted before leaving and sudo mode verification is required.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [silent] - Whether to suppress the system message when leaving a group DM.
  ///
  /// [deleteMessages] - When leaving a group DM, also delete all messages the caller has sent in the channel.
  ///
  /// [body] - Name not received - field will be skipped.
  @DELETE('/channels/{channel_id}/recipients/{user_id}')
  Future<void> removeGroupDmRecipient({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('user_id') required SnowflakeType userId,
    @Body() SudoVerificationSchema? body,
    @Query('silent') String? silent = 'false',
    @Query('delete_messages') String? deleteMessages = 'false',
  });

  /// List RTC regions.
  ///
  /// Returns available voice and video calling regions for the channel, used to optimise connection quality. Requires membership with call permissions.
  ///
  /// [channelId] - The ID of the channel.
  @GET('/channels/{channel_id}/rtc-regions')
  Future<RtcRegionListResponse> listRtcRegions({
    @Path('channel_id') required SnowflakeType channelId,
  });

  /// Fetch slowmode state.
  ///
  /// Returns the current slowmode rate-limit state for the calling user in this channel, including the configured interval and the time at which they are next allowed to send a message. Lets clients restore slowmode countdowns across devices without relying on local persistence.
  ///
  /// [channelId] - The ID of the channel.
  @GET('/channels/{channel_id}/slowmode')
  Future<ChannelSlowmodeStateResponse> getChannelSlowmodeState({
    @Path('channel_id') required SnowflakeType channelId,
  });

  /// Create a forum tag.
  ///
  /// Adds a tag to a forum or media channel. Requires the manage channels permission. Returns the updated channel.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/channels/{channel_id}/tags')
  Future<ChannelResponse> createForumTag({
    @Path('channel_id') required SnowflakeType channelId,
    @Body() required ForumTagRequest body,
  });

  /// Update a forum tag.
  ///
  /// Replaces a tag of a forum or media channel. Requires the manage channels permission. Returns the updated channel.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [tagId] - The ID of the forum tag.
  ///
  /// [body] - Name not received - field will be skipped.
  @PUT('/channels/{channel_id}/tags/{tag_id}')
  Future<ChannelResponse> updateForumTag({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('tag_id') required SnowflakeType tagId,
    @Body() required ForumTagRequest body,
  });

  /// Delete a forum tag.
  ///
  /// Removes a tag from a forum or media channel. Requires the manage channels permission. Returns the updated channel.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [tagId] - The ID of the forum tag.
  @DELETE('/channels/{channel_id}/tags/{tag_id}')
  Future<ChannelResponse> deleteForumTag({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('tag_id') required SnowflakeType tagId,
  });

  /// List thread members.
  ///
  /// Returns thread members ordered by user ID. Paginate with after and limit. Set with_member to include the guild member object of each thread member.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [withMember] - Whether to include a guild member object for each thread member.
  ///
  /// [after] - Get thread members after this user ID.
  ///
  /// [limit] - Max number of thread members to return (1-100, default 100).
  @GET('/channels/{channel_id}/thread-members')
  Future<ThreadMemberListResponse> listThreadMembers({
    @Path('channel_id') required SnowflakeType channelId,
    @Query('after') SnowflakeType? after,
    @Query('with_member') String? withMember = 'false',
    @Query('limit') String? limit = '100',
  });

  /// Join a thread.
  ///
  /// Adds the current user to the thread. The thread must not be archived.
  ///
  /// [channelId] - The ID of the channel.
  @PUT('/channels/{channel_id}/thread-members/@me')
  Future<void> joinThread({
    @Path('channel_id') required SnowflakeType channelId,
  });

  /// Leave a thread.
  ///
  /// Removes the current user from the thread. The thread must not be archived.
  ///
  /// [channelId] - The ID of the channel.
  @DELETE('/channels/{channel_id}/thread-members/@me')
  Future<void> leaveThread({
    @Path('channel_id') required SnowflakeType channelId,
  });

  /// Update thread settings.
  ///
  /// Updates the current user's notification settings for a thread they are a member of. Returns the thread member, or 204 when nothing changed.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [body] - Name not received - field will be skipped.
  @PATCH('/channels/{channel_id}/thread-members/@me/settings')
  Future<ThreadMemberResponse?> updateThreadMemberSettings({
    @Path('channel_id') required SnowflakeType channelId,
    @Body() ThreadMemberSettingsRequest? body,
  });

  /// Get a thread member.
  ///
  /// Returns the thread member object of the user when the user is a member of the thread.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [userId] - The ID of the user.
  ///
  /// [withMember] - Whether to include a guild member object for the thread member.
  @GET('/channels/{channel_id}/thread-members/{user_id}')
  Future<ThreadMemberResponse> getThreadMember({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('user_id') required SnowflakeType userId,
    @Query('with_member') String? withMember = 'false',
  });

  /// Add a thread member.
  ///
  /// Adds another guild member to the thread. Requires permission to send messages in threads, and the thread must not be archived.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [userId] - The ID of the user.
  @PUT('/channels/{channel_id}/thread-members/{user_id}')
  Future<void> addThreadMember({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('user_id') required SnowflakeType userId,
  });

  /// Remove a thread member.
  ///
  /// Removes a member from the thread. Requires the manage threads permission, or being the creator of a private thread. The thread must not be archived.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [userId] - The ID of the user.
  @DELETE('/channels/{channel_id}/thread-members/{user_id}')
  Future<void> removeThreadMember({
    @Path('channel_id') required SnowflakeType channelId,
    @Path('user_id') required SnowflakeType userId,
  });

  /// Start a thread.
  ///
  /// Creates a thread that is not attached to an existing message. In a text channel the thread type is required. In a forum or media channel this creates a post, and the body carries the first message. The body can also be sent as multipart form data with the JSON in a payload_json field, and a post can attach files as files[n] parts.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [payloadJson] - The JSON-encoded request body.
  /// Name not received - field will be skipped.
  ///
  /// [files0] - A file for the first message of a post, referenced by attachment id 0. Further files go in files[1], files[2] and so on.
  /// Name not received - field will be skipped.
  @MultiPart()
  @POST('/channels/{channel_id}/threads')
  Future<StartForumThreadResponse> startThread({
    @Path('channel_id') required SnowflakeType channelId,
    @Part(name: 'payload_json') required String payloadJson,
    @Part(name: 'files[0]') MultipartFile? files0,
  });

  /// List private archived threads.
  ///
  /// Returns archived private threads of the text channel, most recently archived first. Requires the read message history and manage threads permissions.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [before] - Get threads archived before this timestamp.
  ///
  /// [limit] - Max number of threads to return (2-100, default 50).
  @GET('/channels/{channel_id}/threads/archived/private')
  Future<ArchivedThreadsResponse> listPrivateArchivedThreads({
    @Path('channel_id') required SnowflakeType channelId,
    @Query('limit') String? limit = '50',
    @Query('before') String? before,
  });

  /// List public archived threads.
  ///
  /// Returns archived public threads of the channel, most recently archived first. Requires the read message history permission.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [before] - Get threads archived before this timestamp.
  ///
  /// [limit] - Max number of threads to return (2-100, default 50).
  @GET('/channels/{channel_id}/threads/archived/public')
  Future<ArchivedThreadsResponse> listPublicArchivedThreads({
    @Path('channel_id') required SnowflakeType channelId,
    @Query('limit') String? limit = '50',
    @Query('before') String? before,
  });

  /// Search threads.
  ///
  /// Returns threads of the channel that match the search. Requires the read message history permission. While the search index of the guild is being built, responds with 202 and a body that says when to retry.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [name] - Text to look for in thread names (max 100 characters).
  ///
  /// [slop] - Accepted for compatibility and ignored (max 100, default 2).
  ///
  /// [tag] - Tag IDs to filter by (max 20).
  ///
  /// [tagSetting] - How posts are filtered when searching by several tags.
  ///
  /// [archived] - Whether to return only archived or only active threads (default both).
  ///
  /// [sortBy] - The sorting algorithm to use.
  ///
  /// [sortOrder] - The direction to sort.
  ///
  /// [limit] - Max number of threads to return (1-25, default 25).
  ///
  /// [offset] - Number of threads to skip (max 9975).
  ///
  /// [maxId] - Get threads before this thread ID.
  ///
  /// [minId] - Get threads after this thread ID.
  @GET('/channels/{channel_id}/threads/search')
  Future<ThreadSearchResult> searchThreads({
    @Path('channel_id') required SnowflakeType channelId,
    @Query('slop') String? slop = '2',
    @Query('sort_by')
    ThreadSearchSortBySchema? sortBy = ThreadSearchSortBySchema.lastMessageTime,
    @Query('sort_order')
    ThreadSearchSortOrderSchema? sortOrder = ThreadSearchSortOrderSchema.desc,
    @Query('limit') String? limit = '25',
    @Query('offset') String? offset = '0',
    @Query('name') String? name,
    @Query('tag') List<SnowflakeType>? tag,
    @Query('tag_setting') ForumTagSettingSchema? tagSetting,
    @Query('archived') String? archived,
    @Query('max_id') SnowflakeType? maxId,
    @Query('min_id') SnowflakeType? minId,
  });

  /// Indicate typing activity.
  ///
  /// Notifies other users in the channel that you are actively typing. Typing indicators typically expire after a short period (usually 10 seconds). Returns 204 No Content, or 200 with a JSON body holding the remaining slowmode cooldowns in message_send_cooldown_ms and thread_create_cooldown_ms when the user is rate limited. Commonly called repeatedly while the user is composing a message.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/channels/{channel_id}/typing')
  Future<void> indicateTyping({
    @Path('channel_id') required SnowflakeType channelId,
    @Body() IndicateTypingRequestSchema? body,
  });

  /// List joined private archived threads.
  ///
  /// Returns archived private threads of the text channel that the current user joined, newest first. Requires the read message history permission.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [before] - Get threads before this thread ID.
  ///
  /// [limit] - Max number of threads to return (2-100, default 50).
  @GET('/channels/{channel_id}/users/@me/threads/archived/private')
  Future<ArchivedThreadsResponse> listJoinedPrivateArchivedThreads({
    @Path('channel_id') required SnowflakeType channelId,
    @Query('limit') String? limit = '50',
    @Query('before') SnowflakeType? before,
  });

  /// List active guild threads.
  ///
  /// Returns every active thread in the guild that the bot can view, newest first, with a thread member object for each thread the bot joined.
  ///
  /// [guildId] - The ID of the guild.
  @GET('/guilds/{guild_id}/threads/active')
  Future<ActiveThreadsResponse> listGuildActiveThreads({
    @Path('guild_id') required SnowflakeType guildId,
  });

  /// Get stream preview image.
  ///
  /// Retrieves the current preview thumbnail for a stream. Returns the image with no-store cache headers to ensure freshness.
  ///
  /// [streamKey] - The stream key.
  @GET('/streams/{stream_key}/preview')
  Future<StreamPreviewResponse> getStreamPreview({
    @Path('stream_key') required String streamKey,
  });

  /// Upload stream preview image.
  ///
  /// Uploads a custom thumbnail image for the stream. The image is scanned for content policy violations and stored securely.
  ///
  /// [streamKey] - The stream key.
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/streams/{stream_key}/preview')
  Future<void> uploadStreamPreview({
    @Path('stream_key') required String streamKey,
    @Body() required StreamPreviewUploadBodySchema body,
  });

  /// Delete stream preview image.
  ///
  /// Removes the thumbnail preview for a stream. Used when the owner opts into "hide preview" so viewers no longer see a stale thumbnail.
  ///
  /// [streamKey] - The stream key.
  @DELETE('/streams/{stream_key}/preview')
  Future<void> deleteStreamPreview({
    @Path('stream_key') required String streamKey,
  });

  /// Create stream preview upload URL.
  ///
  /// Creates a reusable PUT upload URL for updating the current thumbnail image for the stream.
  ///
  /// [streamKey] - The stream key.
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/streams/{stream_key}/preview/upload-url')
  Future<StreamPreviewUploadUrlResponseSchema> createStreamPreviewUploadUrl({
    @Path('stream_key') required String streamKey,
    @Body() required StreamPreviewUploadUrlBodySchema body,
  });

  /// Update stream region.
  ///
  /// Changes the media server region for an active stream. Used to optimise bandwidth and latency for streaming.
  ///
  /// [streamKey] - The stream key.
  ///
  /// [body] - Name not received - field will be skipped.
  @PATCH('/streams/{stream_key}/stream')
  Future<void> updateStreamRegion({
    @Path('stream_key') required String streamKey,
    @Body() StreamUpdateBodySchema? body,
  });
}
