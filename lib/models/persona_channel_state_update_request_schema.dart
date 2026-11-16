// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'snowflake_string_type.dart';

part 'persona_channel_state_update_request_schema.g.dart';

@JsonSerializable()
class PersonaChannelStateUpdateRequestSchema {
  const PersonaChannelStateUpdateRequestSchema({required this.personaId});

  factory PersonaChannelStateUpdateRequestSchema.fromJson(
    Map<String, Object?> json,
  ) => _$PersonaChannelStateUpdateRequestSchemaFromJson(json);

  /// The persona to select in the channel, or null for the account
  @JsonKey(includeIfNull: true, name: 'persona_id')
  final SnowflakeStringType? personaId;

  Map<String, Object?> toJson() =>
      _$PersonaChannelStateUpdateRequestSchemaToJson(this);
}
