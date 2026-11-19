// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_channel_state_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaChannelStateSchema _$PersonaChannelStateSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaChannelStateSchema', json, ($checkedConvert) {
  final val = PersonaChannelStateSchema(
    channelId: $checkedConvert(
      'channel_id',
      (v) => v as SnowflakeStringType? ?? '',
    ),
    personaId: $checkedConvert('persona_id', (v) => v as SnowflakeStringType?),
  );
  return val;
}, fieldKeyMap: const {'channelId': 'channel_id', 'personaId': 'persona_id'});

Map<String, dynamic> _$PersonaChannelStateSchemaToJson(
  PersonaChannelStateSchema instance,
) => <String, dynamic>{
  'channel_id': instance.channelId,
  'persona_id': instance.personaId,
};
