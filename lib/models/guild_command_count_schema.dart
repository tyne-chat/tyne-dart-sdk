// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'snowflake_string_type.dart';

part 'guild_command_count_schema.g.dart';

@JsonSerializable()
class GuildCommandCountSchema {
  const GuildCommandCountSchema({
    required this.counterId,
    required this.scopeKey,
    required this.value,
  });

  factory GuildCommandCountSchema.fromJson(Map<String, Object?> json) =>
      _$GuildCommandCountSchemaFromJson(json);

  /// The counter
  @JsonKey(name: 'counter_id', defaultValue: '')
  final SnowflakeStringType counterId;

  /// Who or what this count is for
  @JsonKey(name: 'scope_key', defaultValue: '')
  final String scopeKey;

  /// The count
  @JsonKey(defaultValue: 0)
  final int value;

  Map<String, Object?> toJson() => _$GuildCommandCountSchemaToJson(this);
}
