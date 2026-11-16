// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'snowflake_string_type.dart';

part 'guild_command_count_set_request_schema.g.dart';

@JsonSerializable()
class GuildCommandCountSetRequestSchema {
  const GuildCommandCountSetRequestSchema({
    required this.counterId,
    required this.scopeKey,
    required this.value,
  });

  factory GuildCommandCountSetRequestSchema.fromJson(
    Map<String, Object?> json,
  ) => _$GuildCommandCountSetRequestSchemaFromJson(json);

  /// The counter
  @JsonKey(name: 'counter_id', defaultValue: '')
  final SnowflakeStringType counterId;

  /// The count to change, as listed
  @JsonKey(name: 'scope_key', defaultValue: '')
  final String scopeKey;

  /// The new count
  @JsonKey(defaultValue: 0)
  final int value;

  Map<String, Object?> toJson() =>
      _$GuildCommandCountSetRequestSchemaToJson(this);
}
