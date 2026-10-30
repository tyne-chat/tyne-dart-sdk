// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'json_nullable.dart';

import 'guild_command_input_mode.dart';
import 'guild_command_input_type.dart';

part 'guild_command_update_request_schema.g.dart';

@JsonSerializable(constructor: '_')
class GuildCommandUpdateRequestSchema {
  GuildCommandUpdateRequestSchema({
    this.name,
    this.description,
    this.template,
    this.inputMode,
    this.inputType,
    JsonNullable<String> inputHint = const JsonNullable<String>.undefined(),
  }) : inputHint = inputHint,
       inputHintValue = inputHint.value,
       _inputHintPresent = inputHint.isPresent;

  const GuildCommandUpdateRequestSchema._({
    this.name,
    this.description,
    this.template,
    this.inputMode,
    this.inputType,
    this.inputHintValue,
  }) : inputHint = const JsonNullable<String>.undefined(),
       _inputHintPresent = false;
  factory GuildCommandUpdateRequestSchema.patch(Map<String, Object?> json) =>
      GuildCommandUpdateRequestSchema.fromJson(json);

  factory GuildCommandUpdateRequestSchema.fromJson(Map<String, Object?> json) {
    final value = _$GuildCommandUpdateRequestSchemaFromJson(json);
    return GuildCommandUpdateRequestSchema(
      name: value.name,
      description: value.description,
      template: value.template,
      inputMode: value.inputMode,
      inputType: value.inputType,
      inputHint: json.containsKey('input_hint')
          ? JsonNullable<String>.of(value.inputHintValue)
          : const JsonNullable<String>.undefined(),
    );
  }

  /// The name typed after the slash: lowercase letters, digits, - and _, at most 32 characters
  @JsonKey(includeIfNull: false)
  final String? name;
  @JsonKey(includeIfNull: false)
  final String? description;

  /// The Liquid template the server fills in when the command runs
  @JsonKey(includeIfNull: false)
  final String? template;
  @JsonKey(includeIfNull: false, name: 'input_mode')
  final GuildCommandInputMode? inputMode;
  @JsonKey(includeIfNull: false, name: 'input_type')
  final GuildCommandInputType? inputType;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<String> inputHint;
  @JsonKey(includeIfNull: false, name: 'input_hint')
  final String? inputHintValue;
  final bool _inputHintPresent;

  Map<String, Object?> toJson() {
    final json = _$GuildCommandUpdateRequestSchemaToJson(this);
    if (_inputHintPresent) {
      json.putIfAbsent('input_hint', () => inputHintValue);
    }
    return json;
  }
}
