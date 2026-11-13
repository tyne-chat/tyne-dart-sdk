// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_reaction_persona_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageReactionPersonaEntry _$MessageReactionPersonaEntryFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('MessageReactionPersonaEntry', json, ($checkedConvert) {
  final val = MessageReactionPersonaEntry(
    personaId: $checkedConvert(
      'persona_id',
      (v) => v as SnowflakeStringType? ?? '',
    ),
    count: $checkedConvert('count', (v) => (v as num?)?.toInt() ?? 0),
    me: $checkedConvert('me', (v) => v as bool?),
  );
  return val;
}, fieldKeyMap: const {'personaId': 'persona_id'});

Map<String, dynamic> _$MessageReactionPersonaEntryToJson(
  MessageReactionPersonaEntry instance,
) => <String, dynamic>{
  'persona_id': instance.personaId,
  'count': instance.count,
  'me': ?instance.me,
};
