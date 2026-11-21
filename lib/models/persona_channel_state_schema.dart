// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'snowflake_string_type.dart';

part 'persona_channel_state_schema.g.dart';

@JsonSerializable()
class PersonaChannelStateSchema {
  const PersonaChannelStateSchema({
    required this.channelId,
    required this.personaId,
  });

  factory PersonaChannelStateSchema.fromJson(Map<String, Object?> json) =>
      _$PersonaChannelStateSchemaFromJson(json);

  /// The channel this selection belongs to
  @JsonKey(name: 'channel_id', defaultValue: '')
  final SnowflakeStringType channelId;

  /// The persona selected in the channel, or null when the channel is used as the account itself
  @JsonKey(includeIfNull: true, name: 'persona_id')
  final SnowflakeStringType? personaId;

  Map<String, Object?> toJson() => _$PersonaChannelStateSchemaToJson(this);
}
