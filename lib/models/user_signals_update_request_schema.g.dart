// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_signals_update_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSignalsUpdateRequestSchema _$UserSignalsUpdateRequestSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'UserSignalsUpdateRequestSchema',
  json,
  ($checkedConvert) {
    final val = UserSignalsUpdateRequestSchema._(
      signalId: $checkedConvert('signal_id', (v) => v as String?),
      channelIdValue: $checkedConvert(
        'channel_id',
        (v) => v as SnowflakeStringType?,
      ),
      personaIdValue: $checkedConvert(
        'persona_id',
        (v) => v as SnowflakeStringType?,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'signalId': 'signal_id',
    'channelIdValue': 'channel_id',
    'personaIdValue': 'persona_id',
  },
);

Map<String, dynamic> _$UserSignalsUpdateRequestSchemaToJson(
  UserSignalsUpdateRequestSchema instance,
) => <String, dynamic>{
  'signal_id': instance.signalId,
  'channel_id': ?instance.channelIdValue,
  'persona_id': ?instance.personaIdValue,
};
