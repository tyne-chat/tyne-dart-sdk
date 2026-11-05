// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_channel_state_update_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaChannelStateUpdateRequestSchema
_$PersonaChannelStateUpdateRequestSchemaFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PersonaChannelStateUpdateRequestSchema', json, (
      $checkedConvert,
    ) {
      final val = PersonaChannelStateUpdateRequestSchema(
        personaId: $checkedConvert(
          'persona_id',
          (v) => v as SnowflakeStringType?,
        ),
      );
      return val;
    }, fieldKeyMap: const {'personaId': 'persona_id'});

Map<String, dynamic> _$PersonaChannelStateUpdateRequestSchemaToJson(
  PersonaChannelStateUpdateRequestSchema instance,
) => <String, dynamic>{'persona_id': instance.personaId};
