// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_signals_persona_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSignalsPersonaRequestSchema _$UserSignalsPersonaRequestSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UserSignalsPersonaRequestSchema', json, ($checkedConvert) {
  final val = UserSignalsPersonaRequestSchema(
    personaId: $checkedConvert('persona_id', (v) => v as SnowflakeStringType?),
    channelIds: $checkedConvert(
      'channel_ids',
      (v) =>
          (v as List<dynamic>?)
              ?.map((e) => e as SnowflakeStringType)
              .toList() ??
          [],
    ),
  );
  return val;
}, fieldKeyMap: const {'personaId': 'persona_id', 'channelIds': 'channel_ids'});

Map<String, dynamic> _$UserSignalsPersonaRequestSchemaToJson(
  UserSignalsPersonaRequestSchema instance,
) => <String, dynamic>{
  'persona_id': instance.personaId,
  'channel_ids': instance.channelIds,
};
