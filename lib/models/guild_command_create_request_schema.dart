// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'json_nullable.dart';

import 'guild_command_input_mode.dart';
import 'guild_command_input_type.dart';

part 'guild_command_create_request_schema.g.dart';

@JsonSerializable(constructor: '_')
class GuildCommandCreateRequestSchema {
  GuildCommandCreateRequestSchema({
    required this.name,
    required this.template,
    required this.inputMode,
    this.description = '',
    this.inputType = GuildCommandInputType.text,
    JsonNullable<String> inputHint = const JsonNullable<String>.undefined(),
  }) : inputHint = inputHint,
       inputHintValue = inputHint.value,
       _inputHintPresent = inputHint.isPresent;

  const GuildCommandCreateRequestSchema._({
    required this.name,
    required this.template,
    required this.inputMode,
    this.inputHintValue,
    this.description = '',
    this.inputType = GuildCommandInputType.text,
  }) : inputHint = const JsonNullable<String>.undefined(),
       _inputHintPresent = false;
  factory GuildCommandCreateRequestSchema.patch(Map<String, Object?> json) =>
      GuildCommandCreateRequestSchema.fromJson(json);

  factory GuildCommandCreateRequestSchema.fromJson(Map<String, Object?> json) {
    final value = _$GuildCommandCreateRequestSchemaFromJson(json);
    return GuildCommandCreateRequestSchema(
      name: value.name,
      template: value.template,
      inputMode: value.inputMode,
      inputHint: json.containsKey('input_hint')
          ? JsonNullable<String>.of(value.inputHintValue)
          : const JsonNullable<String>.undefined(),
      description: value.description,
      inputType: value.inputType,
    );
  }

  /// The name typed after the slash: lowercase letters, digits, - and _, at most 32 characters
  @JsonKey(defaultValue: '')
  final String name;

  /// Shown in autocomplete
  final String description;

  /// The Liquid template the server fills in when the command runs
  @JsonKey(defaultValue: '')
  final String template;
  @JsonKey(name: 'input_mode', defaultValue: GuildCommandInputMode.$unknown)
  final GuildCommandInputMode inputMode;
  @JsonKey(name: 'input_type')
  final GuildCommandInputType inputType;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<String> inputHint;
  @JsonKey(includeIfNull: false, name: 'input_hint')
  final String? inputHintValue;
  final bool _inputHintPresent;

  Map<String, Object?> toJson() {
    final json = _$GuildCommandCreateRequestSchemaToJson(this);
    if (_inputHintPresent) {
      json.putIfAbsent('input_hint', () => inputHintValue);
    }
    return json;
  }
}
