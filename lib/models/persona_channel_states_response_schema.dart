// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_channel_state_schema.dart';

part 'persona_channel_states_response_schema.g.dart';

@JsonSerializable()
class PersonaChannelStatesResponseSchema {
  const PersonaChannelStatesResponseSchema({required this.states});

  factory PersonaChannelStatesResponseSchema.fromJson(
    Map<String, Object?> json,
  ) => _$PersonaChannelStatesResponseSchemaFromJson(json);

  /// Every channel that has a persona selected
  @JsonKey(defaultValue: <PersonaChannelStateSchema>[])
  final List<PersonaChannelStateSchema> states;

  Map<String, Object?> toJson() =>
      _$PersonaChannelStatesResponseSchemaToJson(this);
}
