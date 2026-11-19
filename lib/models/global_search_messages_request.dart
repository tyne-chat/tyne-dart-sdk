// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'message_author_type.dart';
import 'message_content_type.dart';
import 'message_embed_type.dart';
import 'message_search_scope.dart';
import 'message_sort_field.dart';
import 'message_sort_order.dart';
import 'snowflake_type.dart';

part 'global_search_messages_request.g.dart';

@JsonSerializable()
class GlobalSearchMessagesRequest {
  const GlobalSearchMessagesRequest({
    this.mentions,
    this.contextGuildId,
    this.cursor,
    this.maxId,
    this.minId,
    this.content,
    this.contextChannelId,
    this.exactPhrases,
    this.channelId,
    this.excludeChannelId,
    this.authorType,
    this.excludeAuthorType,
    this.authorId,
    this.excludeAuthorId,
    this.scope,
    this.excludeMentions,
    this.personaId,
    this.excludePersonaId,
    this.personaMentions,
    this.excludePersonaMentions,
    this.mentionEveryone,
    this.pinned,
    this.has,
    this.excludeHas,
    this.embedType,
    this.excludeEmbedType,
    this.channelIds,
    this.excludeEmbedProvider,
    this.linkHostname,
    this.excludeLinkHostname,
    this.attachmentFilename,
    this.excludeAttachmentFilename,
    this.attachmentExtension,
    this.excludeAttachmentExtension,
    this.contents,
    this.includeNsfw = false,
    this.hitsPerPage = 25,
    this.sortBy = MessageSortField.timestamp,
    this.page = 1,
    this.sortOrder = MessageSortOrder.desc,
    this.embedProvider,
  });

  factory GlobalSearchMessagesRequest.fromJson(Map<String, Object?> json) =>
      _$GlobalSearchMessagesRequestFromJson(json);

  /// Number of results per page (1-25)
  @JsonKey(name: 'hits_per_page')
  final int hitsPerPage;

  /// Page number for pagination (ignored when cursor is provided). Use cursor to page beyond this.
  final int page;

  /// Opaque cursor for search_after pagination. When provided, page is ignored.
  @JsonKey(includeIfNull: false)
  final List<String>? cursor;

  /// Maximum message ID to include in results
  @JsonKey(includeIfNull: false, name: 'max_id')
  final SnowflakeType? maxId;

  /// Minimum message ID to include in results
  @JsonKey(includeIfNull: false, name: 'min_id')
  final SnowflakeType? minId;

  /// Text content to search for
  @JsonKey(includeIfNull: false)
  final String? content;

  /// Multiple content queries to search for
  @JsonKey(includeIfNull: false)
  final List<String>? contents;

  /// Exact phrases that must appear contiguously in message content
  @JsonKey(includeIfNull: false, name: 'exact_phrases')
  final List<String>? exactPhrases;

  /// Channel IDs to search in
  @JsonKey(includeIfNull: false, name: 'channel_id')
  final List<SnowflakeType>? channelId;

  /// Channel IDs to exclude from search
  @JsonKey(includeIfNull: false, name: 'exclude_channel_id')
  final List<SnowflakeType>? excludeChannelId;

  /// Author types to filter by
  @JsonKey(includeIfNull: false, name: 'author_type')
  final List<MessageAuthorType>? authorType;

  /// Author types to exclude
  @JsonKey(includeIfNull: false, name: 'exclude_author_type')
  final List<MessageAuthorType>? excludeAuthorType;

  /// Author user IDs to filter by
  @JsonKey(includeIfNull: false, name: 'author_id')
  final List<SnowflakeType>? authorId;

  /// Author user IDs to exclude
  @JsonKey(includeIfNull: false, name: 'exclude_author_id')
  final List<SnowflakeType>? excludeAuthorId;

  /// User IDs that must be mentioned
  @JsonKey(includeIfNull: false)
  final List<SnowflakeType>? mentions;

  /// User IDs that must not be mentioned
  @JsonKey(includeIfNull: false, name: 'exclude_mentions')
  final List<SnowflakeType>? excludeMentions;

  /// Persona IDs to filter by; a message matches if it is from any author_id or any persona_id given
  @JsonKey(includeIfNull: false, name: 'persona_id')
  final List<SnowflakeType>? personaId;

  /// Persona IDs whose messages to exclude
  @JsonKey(includeIfNull: false, name: 'exclude_persona_id')
  final List<SnowflakeType>? excludePersonaId;

  /// Persona IDs that must be mentioned
  @JsonKey(includeIfNull: false, name: 'persona_mentions')
  final List<SnowflakeType>? personaMentions;

  /// Persona IDs that must not be mentioned
  @JsonKey(includeIfNull: false, name: 'exclude_persona_mentions')
  final List<SnowflakeType>? excludePersonaMentions;

  /// Filter by whether message mentions everyone
  @JsonKey(includeIfNull: false, name: 'mention_everyone')
  final bool? mentionEveryone;

  /// Filter by pinned status
  @JsonKey(includeIfNull: false)
  final bool? pinned;

  /// Content flags the message must have. Use image, video, sound, or file for uploaded attachments and embed for link previews or rich embeds.
  @JsonKey(includeIfNull: false)
  final List<MessageContentType>? has;

  /// Content flags the message must not have. Use image, video, sound, or file for uploaded attachments and embed for link previews or rich embeds.
  @JsonKey(includeIfNull: false, name: 'exclude_has')
  final List<MessageContentType>? excludeHas;

  /// Generated or supplied embed types to filter by; does not match uploaded attachments
  @JsonKey(includeIfNull: false, name: 'embed_type')
  final List<MessageEmbedType>? embedType;

  /// Generated or supplied embed types to exclude; does not match uploaded attachments
  @JsonKey(includeIfNull: false, name: 'exclude_embed_type')
  final List<MessageEmbedType>? excludeEmbedType;

  /// Embed providers to filter by
  @JsonKey(includeIfNull: false, name: 'embed_provider')
  final List<String>? embedProvider;

  /// Embed providers to exclude
  @JsonKey(includeIfNull: false, name: 'exclude_embed_provider')
  final List<String>? excludeEmbedProvider;

  /// Link hostnames to filter by
  @JsonKey(includeIfNull: false, name: 'link_hostname')
  final List<String>? linkHostname;

  /// Link hostnames to exclude
  @JsonKey(includeIfNull: false, name: 'exclude_link_hostname')
  final List<String>? excludeLinkHostname;

  /// Attachment filenames to filter by
  @JsonKey(includeIfNull: false, name: 'attachment_filename')
  final List<String>? attachmentFilename;

  /// Attachment filenames to exclude
  @JsonKey(includeIfNull: false, name: 'exclude_attachment_filename')
  final List<String>? excludeAttachmentFilename;

  /// File extensions to filter by
  @JsonKey(includeIfNull: false, name: 'attachment_extension')
  final List<String>? attachmentExtension;

  /// File extensions to exclude
  @JsonKey(includeIfNull: false, name: 'exclude_attachment_extension')
  final List<String>? excludeAttachmentExtension;

  /// Field to sort results by
  @JsonKey(name: 'sort_by')
  final MessageSortField sortBy;

  /// Sort order for results
  @JsonKey(name: 'sort_order')
  final MessageSortOrder sortOrder;

  /// Whether to include NSFW channel results
  @JsonKey(name: 'include_nsfw')
  final bool includeNsfw;

  /// Scope to search within when querying messages
  @JsonKey(includeIfNull: false)
  final MessageSearchScope? scope;

  /// Channel ID for context when searching across multiple channels
  @JsonKey(includeIfNull: false, name: 'context_channel_id')
  final SnowflakeType? contextChannelId;

  /// Guild ID for context when searching across multiple guilds
  @JsonKey(includeIfNull: false, name: 'context_guild_id')
  final SnowflakeType? contextGuildId;

  /// Specific channel IDs to search in
  @JsonKey(includeIfNull: false, name: 'channel_ids')
  final List<SnowflakeType>? channelIds;

  Map<String, Object?> toJson() => _$GlobalSearchMessagesRequestToJson(this);
}
