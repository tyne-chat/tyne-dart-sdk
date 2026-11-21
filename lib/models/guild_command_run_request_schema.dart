// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'json_nullable.dart';

import 'message_nonce_request.dart';
import 'snowflake_string_type.dart';

part 'guild_command_run_request_schema.g.dart';

@JsonSerializable(constructor: '_')
class GuildCommandRunRequestSchema {
  GuildCommandRunRequestSchema({
    required this.nonce,
    JsonNullable<String> input = const JsonNullable<String>.undefined(),
    JsonNullable<SnowflakeStringType> personaId =
        const JsonNullable<SnowflakeStringType>.undefined(),
  }) : input = input,
       inputValue = input.value,
       _inputPresent = input.isPresent,
       personaId = personaId,
       personaIdValue = personaId.value,
       _personaIdPresent = personaId.isPresent;

  const GuildCommandRunRequestSchema._({
    required this.nonce,
    this.inputValue,
    this.personaIdValue,
  }) : input = const JsonNullable<String>.undefined(),
       _inputPresent = false,
       personaId = const JsonNullable<SnowflakeStringType>.undefined(),
       _personaIdPresent = false;
  factory GuildCommandRunRequestSchema.patch(Map<String, Object?> json) =>
      GuildCommandRunRequestSchema.fromJson(json);

  factory GuildCommandRunRequestSchema.fromJson(Map<String, Object?> json) {
    final value = _$GuildCommandRunRequestSchemaFromJson(json);
    return GuildCommandRunRequestSchema(
      nonce: value.nonce,
      input: json.containsKey('input')
          ? JsonNullable<String>.of(value.inputValue)
          : const JsonNullable<String>.undefined(),
      personaId: json.containsKey('persona_id')
          ? JsonNullable<SnowflakeStringType>.of(value.personaIdValue)
          : const JsonNullable<SnowflakeStringType>.undefined(),
    );
  }

  @JsonKey(defaultValue: '')
  final MessageNonceRequest nonce;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<String> input;
  @JsonKey(includeIfNull: false, name: 'input')
  final String? inputValue;
  final bool _inputPresent;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<SnowflakeStringType> personaId;
  @JsonKey(includeIfNull: false, name: 'persona_id')
  final SnowflakeStringType? personaIdValue;
  final bool _personaIdPresent;

  Map<String, Object?> toJson() {
    final json = _$GuildCommandRunRequestSchemaToJson(this);
    if (_inputPresent) {
      json.putIfAbsent('input', () => inputValue);
    }
    if (_personaIdPresent) {
      json.putIfAbsent('persona_id', () => personaIdValue);
    }
    return json;
  }
}
