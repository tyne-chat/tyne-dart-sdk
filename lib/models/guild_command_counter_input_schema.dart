// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'json_nullable.dart';

import 'guild_command_counter_identity.dart';
import 'guild_command_counter_part.dart';
import 'snowflake_string_type.dart';

part 'guild_command_counter_input_schema.g.dart';

@JsonSerializable(constructor: '_')
class GuildCommandCounterInputSchema {
  GuildCommandCounterInputSchema({
    required this.name,
    required this.per,
    this.identity = GuildCommandCounterIdentity.persona,
    JsonNullable<SnowflakeStringType> id =
        const JsonNullable<SnowflakeStringType>.undefined(),
  }) : id = id,
       idValue = id.value,
       _idPresent = id.isPresent;

  const GuildCommandCounterInputSchema._({
    required this.name,
    required this.per,
    this.identity = GuildCommandCounterIdentity.persona,
    this.idValue,
  }) : id = const JsonNullable<SnowflakeStringType>.undefined(),
       _idPresent = false;
  factory GuildCommandCounterInputSchema.patch(Map<String, Object?> json) =>
      GuildCommandCounterInputSchema.fromJson(json);

  factory GuildCommandCounterInputSchema.fromJson(Map<String, Object?> json) {
    final value = _$GuildCommandCounterInputSchemaFromJson(json);
    return GuildCommandCounterInputSchema(
      name: value.name,
      per: value.per,
      identity: value.identity,
      id: json.containsKey('id')
          ? JsonNullable<SnowflakeStringType>.of(value.idValue)
          : const JsonNullable<SnowflakeStringType>.undefined(),
    );
  }

  /// The name the template reads it by
  @JsonKey(defaultValue: '')
  final String name;

  /// What the count is kept per; empty for one count
  @JsonKey(defaultValue: <GuildCommandCounterPart>[])
  final List<GuildCommandCounterPart> per;
  final GuildCommandCounterIdentity identity;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<SnowflakeStringType> id;
  @JsonKey(includeIfNull: false, name: 'id')
  final SnowflakeStringType? idValue;
  final bool _idPresent;

  Map<String, Object?> toJson() {
    final json = _$GuildCommandCounterInputSchemaToJson(this);
    if (_idPresent) {
      json.putIfAbsent('id', () => idValue);
    }
    return json;
  }
}
