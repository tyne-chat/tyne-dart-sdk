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
    this.inputType = GuildCommandInputType.text,
    JsonNullable<String> description = const JsonNullable<String>.undefined(),
    JsonNullable<String> inputHint = const JsonNullable<String>.undefined(),
  }) : description = description,
       descriptionValue = description.value,
       _descriptionPresent = description.isPresent,
       inputHint = inputHint,
       inputHintValue = inputHint.value,
       _inputHintPresent = inputHint.isPresent;

  const GuildCommandCreateRequestSchema._({
    required this.name,
    required this.template,
    required this.inputMode,
    this.inputType = GuildCommandInputType.text,
    this.descriptionValue,
    this.inputHintValue,
  }) : description = const JsonNullable<String>.undefined(),
       _descriptionPresent = false,
       inputHint = const JsonNullable<String>.undefined(),
       _inputHintPresent = false;
  factory GuildCommandCreateRequestSchema.patch(Map<String, Object?> json) =>
      GuildCommandCreateRequestSchema.fromJson(json);

  factory GuildCommandCreateRequestSchema.fromJson(Map<String, Object?> json) {
    final value = _$GuildCommandCreateRequestSchemaFromJson(json);
    return GuildCommandCreateRequestSchema(
      name: value.name,
      template: value.template,
      inputMode: value.inputMode,
      inputType: value.inputType,
      description: json.containsKey('description')
          ? JsonNullable<String>.of(value.descriptionValue)
          : const JsonNullable<String>.undefined(),
      inputHint: json.containsKey('input_hint')
          ? JsonNullable<String>.of(value.inputHintValue)
          : const JsonNullable<String>.undefined(),
    );
  }

  /// The name typed after the slash: lowercase letters, digits, - and _, at most 32 characters
  @JsonKey(defaultValue: '')
  final String name;

  /// The Liquid template the server fills in when the command runs
  @JsonKey(defaultValue: '')
  final String template;
  @JsonKey(name: 'input_mode', defaultValue: GuildCommandInputMode.$unknown)
  final GuildCommandInputMode inputMode;
  @JsonKey(name: 'input_type')
  final GuildCommandInputType inputType;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<String> description;
  @JsonKey(includeIfNull: false, name: 'description')
  final String? descriptionValue;
  final bool _descriptionPresent;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<String> inputHint;
  @JsonKey(includeIfNull: false, name: 'input_hint')
  final String? inputHintValue;
  final bool _inputHintPresent;

  Map<String, Object?> toJson() {
    final json = _$GuildCommandCreateRequestSchemaToJson(this);
    if (_descriptionPresent) {
      json.putIfAbsent('description', () => descriptionValue);
    }
    if (_inputHintPresent) {
      json.putIfAbsent('input_hint', () => inputHintValue);
    }
    return json;
  }
}
