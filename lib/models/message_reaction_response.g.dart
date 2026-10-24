// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_reaction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageReactionResponse _$MessageReactionResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'MessageReactionResponse',
  json,
  ($checkedConvert) {
    final val = MessageReactionResponse(
      emoji: $checkedConvert(
        'emoji',
        (v) => v == null
            ? _$missingMessageReactionResponseEmoji()
            : MessageReactionResponseEmoji.fromJson(v as Map<String, dynamic>),
      ),
      count: $checkedConvert('count', (v) => (v as num?)?.toInt() ?? 0),
      me: $checkedConvert('me', (v) => v as bool?),
      meRoot: $checkedConvert('me_root', (v) => v as bool?),
      personaReactions: $checkedConvert(
        'persona_reactions',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) => MessageReactionPersonaEntry.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'meRoot': 'me_root',
    'personaReactions': 'persona_reactions',
  },
);

Map<String, dynamic> _$MessageReactionResponseToJson(
  MessageReactionResponse instance,
) => <String, dynamic>{
  'emoji': instance.emoji,
  'count': instance.count,
  'me': ?instance.me,
  'me_root': ?instance.meRoot,
  'persona_reactions': ?instance.personaReactions,
};
