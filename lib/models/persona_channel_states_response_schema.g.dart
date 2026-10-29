// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_channel_states_response_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaChannelStatesResponseSchema _$PersonaChannelStatesResponseSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaChannelStatesResponseSchema', json, (
  $checkedConvert,
) {
  final val = PersonaChannelStatesResponseSchema(
    states: $checkedConvert(
      'states',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => PersonaChannelStateSchema.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          [],
    ),
  );
  return val;
});

Map<String, dynamic> _$PersonaChannelStatesResponseSchemaToJson(
  PersonaChannelStatesResponseSchema instance,
) => <String, dynamic>{'states': instance.states};
