// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_reaction_emoji_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DefaultReactionEmojiResponse _$DefaultReactionEmojiResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('DefaultReactionEmojiResponse', json, ($checkedConvert) {
  final val = DefaultReactionEmojiResponse(
    emojiId: $checkedConvert('emoji_id', (v) => v as SnowflakeStringType?),
    emojiName: $checkedConvert('emoji_name', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {'emojiId': 'emoji_id', 'emojiName': 'emoji_name'});

Map<String, dynamic> _$DefaultReactionEmojiResponseToJson(
  DefaultReactionEmojiResponse instance,
) => <String, dynamic>{
  'emoji_id': instance.emojiId,
  'emoji_name': instance.emojiName,
};
