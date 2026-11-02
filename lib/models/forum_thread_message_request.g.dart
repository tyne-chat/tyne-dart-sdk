// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forum_thread_message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForumThreadMessageRequest _$ForumThreadMessageRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ForumThreadMessageRequest',
  json,
  ($checkedConvert) {
    final val = ForumThreadMessageRequest(
      flags: $checkedConvert('flags', (v) => (v as num?)?.toInt() ?? 0),
      content: $checkedConvert('content', (v) => v as MessageContentRequest?),
      embeds: $checkedConvert(
        'embeds',
        (v) => (v as List<dynamic>?)
            ?.map((e) => RichEmbedRequest.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      attachments: $checkedConvert(
        'attachments',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) => ForumThreadMessageRequestAttachmentsAttachments.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
      allowedMentions: $checkedConvert(
        'allowed_mentions',
        (v) => v == null
            ? null
            : AllowedMentionsRequest.fromJson(v as Map<String, dynamic>),
      ),
      stickerIds: $checkedConvert(
        'sticker_ids',
        (v) => (v as List<dynamic>?)?.map((e) => e as SnowflakeType).toList(),
      ),
      personaId: $checkedConvert('persona_id', (v) => v as SnowflakeType?),
      subprofile: $checkedConvert(
        'subprofile',
        (v) => v == null
            ? null
            : LegacyMessageSubprofileRequestSchema.fromJson(
                v as Map<String, dynamic>,
              ),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'allowedMentions': 'allowed_mentions',
    'stickerIds': 'sticker_ids',
    'personaId': 'persona_id',
  },
);

Map<String, dynamic> _$ForumThreadMessageRequestToJson(
  ForumThreadMessageRequest instance,
) => <String, dynamic>{
  'content': ?instance.content,
  'embeds': ?instance.embeds,
  'attachments': ?instance.attachments,
  'allowed_mentions': ?instance.allowedMentions,
  'flags': instance.flags,
  'sticker_ids': ?instance.stickerIds,
  'persona_id': ?instance.personaId,
  'subprofile': ?instance.subprofile,
};
