// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'allowed_mentions_request.dart';
import 'forum_thread_message_request_attachments_attachments.dart';
import 'legacy_message_subprofile_request_schema.dart';
import 'message_content_request.dart';
import 'message_flags.dart';
import 'rich_embed_request.dart';
import 'snowflake_type.dart';

part 'forum_thread_message_request.g.dart';

@JsonSerializable()
class ForumThreadMessageRequest {
  const ForumThreadMessageRequest({
    this.flags = 0,
    this.content,
    this.embeds,
    this.attachments,
    this.allowedMentions,
    this.stickerIds,
    this.personaId,
    this.subprofile,
  });

  factory ForumThreadMessageRequest.fromJson(Map<String, Object?> json) =>
      _$ForumThreadMessageRequestFromJson(json);

  @JsonKey(includeIfNull: false)
  final MessageContentRequest? content;

  /// Array of embed objects to include in the message
  @JsonKey(includeIfNull: false)
  final List<RichEmbedRequest>? embeds;

  /// Array of attachment objects
  @JsonKey(includeIfNull: false)
  final List<ForumThreadMessageRequestAttachmentsAttachments>? attachments;

  /// Controls which mentions trigger notifications
  @JsonKey(includeIfNull: false, name: 'allowed_mentions')
  final AllowedMentionsRequest? allowedMentions;

  /// Message flags bitfield
  final MessageFlags flags;

  /// Array of sticker IDs to include (max 3)
  @JsonKey(includeIfNull: false, name: 'sticker_ids')
  final List<SnowflakeType>? stickerIds;

  /// ID of one of your personas to send the message as
  @JsonKey(includeIfNull: false, name: 'persona_id')
  final SnowflakeType? personaId;

  /// Deprecated, use persona_id. Only its id is read, and persona_id wins when both are sent
  @JsonKey(includeIfNull: false)
  final LegacyMessageSubprofileRequestSchema? subprofile;

  Map<String, Object?> toJson() => _$ForumThreadMessageRequestToJson(this);
}
