// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WebhookMessageRequest _$WebhookMessageRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'WebhookMessageRequest',
  json,
  ($checkedConvert) {
    final val = WebhookMessageRequest(
      flags: $checkedConvert('flags', (v) => (v as num?)?.toInt() ?? 0),
      content: $checkedConvert('content', (v) => v as MessageContentRequest?),
      embeds: $checkedConvert(
        'embeds',
        (v) => (v as List<dynamic>?)
            ?.map((e) => RichEmbedRequest.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      messageReference: $checkedConvert(
        'message_reference',
        (v) => v == null
            ? null
            : MessageReferenceRequest.fromJson(v as Map<String, dynamic>),
      ),
      allowedMentions: $checkedConvert(
        'allowed_mentions',
        (v) => v == null
            ? null
            : AllowedMentionsRequest.fromJson(v as Map<String, dynamic>),
      ),
      nonce: $checkedConvert('nonce', (v) => v as MessageNonceRequest?),
      favoriteMemeId: $checkedConvert(
        'favorite_meme_id',
        (v) => v as SnowflakeType?,
      ),
      stickerIds: $checkedConvert(
        'sticker_ids',
        (v) => (v as List<dynamic>?)?.map((e) => e as SnowflakeType).toList(),
      ),
      tts: $checkedConvert('tts', (v) => v as bool?),
      username: $checkedConvert('username', (v) => v as String?),
      avatarUrl: $checkedConvert('avatar_url', (v) => v as String?),
      attachments: $checkedConvert(
        'attachments',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) => ClientUploadedAttachmentRequest.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
      threadName: $checkedConvert('thread_name', (v) => v as String?),
      appliedTags: $checkedConvert(
        'applied_tags',
        (v) => (v as List<dynamic>?)?.map((e) => e as SnowflakeType).toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'messageReference': 'message_reference',
    'allowedMentions': 'allowed_mentions',
    'favoriteMemeId': 'favorite_meme_id',
    'stickerIds': 'sticker_ids',
    'avatarUrl': 'avatar_url',
    'threadName': 'thread_name',
    'appliedTags': 'applied_tags',
  },
);

Map<String, dynamic> _$WebhookMessageRequestToJson(
  WebhookMessageRequest instance,
) => <String, dynamic>{
  'content': ?instance.content,
  'embeds': ?instance.embeds,
  'message_reference': ?instance.messageReference,
  'allowed_mentions': ?instance.allowedMentions,
  'flags': instance.flags,
  'nonce': ?instance.nonce,
  'favorite_meme_id': ?instance.favoriteMemeId,
  'sticker_ids': ?instance.stickerIds,
  'tts': ?instance.tts,
  'username': ?instance.username,
  'avatar_url': ?instance.avatarUrl,
  'attachments': ?instance.attachments,
  'thread_name': ?instance.threadName,
  'applied_tags': ?instance.appliedTags,
};
