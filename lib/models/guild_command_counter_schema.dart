// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'guild_command_counter_identity.dart';
import 'guild_command_counter_part.dart';
import 'snowflake_string_type.dart';

part 'guild_command_counter_schema.g.dart';

@JsonSerializable()
class GuildCommandCounterSchema {
  const GuildCommandCounterSchema({
    required this.id,
    required this.name,
    required this.per,
    required this.identity,
  });

  factory GuildCommandCounterSchema.fromJson(Map<String, Object?> json) =>
      _$GuildCommandCounterSchemaFromJson(json);

  /// The ID of the counter
  @JsonKey(defaultValue: '')
  final SnowflakeStringType id;
  @JsonKey(defaultValue: '')
  final String name;
  @JsonKey(defaultValue: <GuildCommandCounterPart>[])
  final List<GuildCommandCounterPart> per;
  @JsonKey(defaultValue: GuildCommandCounterIdentity.$unknown)
  final GuildCommandCounterIdentity identity;

  Map<String, Object?> toJson() => _$GuildCommandCounterSchemaToJson(this);
}
