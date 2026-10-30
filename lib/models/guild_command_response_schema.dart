// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'guild_command_input_mode.dart';
import 'guild_command_input_type.dart';
import 'guild_command_kind.dart';
import 'snowflake_string_type.dart';

part 'guild_command_response_schema.g.dart';

@JsonSerializable()
class GuildCommandResponseSchema {
  const GuildCommandResponseSchema({
    required this.id,
    required this.guildId,
    required this.name,
    required this.description,
    required this.kind,
    required this.inputMode,
    required this.inputType,
    required this.inputHint,
    required this.creatorId,
    required this.createdAt,
    required this.updatedAt,
    this.template,
  });

  factory GuildCommandResponseSchema.fromJson(Map<String, Object?> json) =>
      _$GuildCommandResponseSchemaFromJson(json);

  /// The ID of the command
  @JsonKey(defaultValue: '')
  final SnowflakeStringType id;

  /// The community the command belongs to
  @JsonKey(name: 'guild_id', defaultValue: '')
  final SnowflakeStringType guildId;
  @JsonKey(defaultValue: '')
  final String name;
  @JsonKey(defaultValue: '')
  final String description;
  @JsonKey(defaultValue: GuildCommandKind.$unknown)
  final GuildCommandKind kind;
  @JsonKey(name: 'input_mode', defaultValue: GuildCommandInputMode.$unknown)
  final GuildCommandInputMode inputMode;
  @JsonKey(name: 'input_type', defaultValue: GuildCommandInputType.$unknown)
  final GuildCommandInputType inputType;
  @JsonKey(includeIfNull: true, name: 'input_hint')
  final String? inputHint;

  /// The member who created the command
  @JsonKey(name: 'creator_id', defaultValue: '')
  final SnowflakeStringType creatorId;

  /// ISO 8601 timestamp
  @JsonKey(name: 'created_at', defaultValue: '')
  final String createdAt;

  /// ISO 8601 timestamp
  @JsonKey(name: 'updated_at', defaultValue: '')
  final String updatedAt;

  /// The template; only returned to those who may edit the community's commands
  @JsonKey(includeIfNull: false)
  final String? template;

  Map<String, Object?> toJson() => _$GuildCommandResponseSchemaToJson(this);
}
