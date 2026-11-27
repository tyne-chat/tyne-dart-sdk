// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'snowflake_string_type.dart';

part 'message_guild_command_response_schema.g.dart';

@JsonSerializable()
class MessageGuildCommandResponseSchema {
  const MessageGuildCommandResponseSchema({
    required this.id,
    required this.guildId,
    required this.name,
  });

  factory MessageGuildCommandResponseSchema.fromJson(
    Map<String, Object?> json,
  ) => _$MessageGuildCommandResponseSchemaFromJson(json);

  /// The ID of the command
  @JsonKey(defaultValue: '')
  final SnowflakeStringType id;

  /// The community the command belongs to
  @JsonKey(name: 'guild_id', defaultValue: '')
  final SnowflakeStringType guildId;

  /// The command's name when the message was posted
  @JsonKey(defaultValue: '')
  final String name;

  Map<String, Object?> toJson() =>
      _$MessageGuildCommandResponseSchemaToJson(this);
}
