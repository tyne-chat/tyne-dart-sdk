// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'json_nullable.dart';

import 'guild_command_counter_input_schema.dart';
import 'snowflake_type.dart';

part 'guild_command_preview_request_schema.g.dart';

@JsonSerializable(constructor: '_')
class GuildCommandPreviewRequestSchema {
  GuildCommandPreviewRequestSchema({
    required this.template,
    this.counters,
    JsonNullable<String> input = const JsonNullable<String>.undefined(),
    JsonNullable<SnowflakeType> channelId =
        const JsonNullable<SnowflakeType>.undefined(),
  }) : input = input,
       inputValue = input.value,
       _inputPresent = input.isPresent,
       channelId = channelId,
       channelIdValue = channelId.value,
       _channelIdPresent = channelId.isPresent;

  const GuildCommandPreviewRequestSchema._({
    required this.template,
    this.inputValue,
    this.channelIdValue,
    this.counters,
  }) : input = const JsonNullable<String>.undefined(),
       _inputPresent = false,
       channelId = const JsonNullable<SnowflakeType>.undefined(),
       _channelIdPresent = false;
  factory GuildCommandPreviewRequestSchema.patch(Map<String, Object?> json) =>
      GuildCommandPreviewRequestSchema.fromJson(json);

  factory GuildCommandPreviewRequestSchema.fromJson(Map<String, Object?> json) {
    final value = _$GuildCommandPreviewRequestSchemaFromJson(json);
    return GuildCommandPreviewRequestSchema(
      template: value.template,
      input: json.containsKey('input')
          ? JsonNullable<String>.of(value.inputValue)
          : const JsonNullable<String>.undefined(),
      channelId: json.containsKey('channel_id')
          ? JsonNullable<SnowflakeType>.of(value.channelIdValue)
          : const JsonNullable<SnowflakeType>.undefined(),
      counters: value.counters,
    );
  }

  /// The Liquid template the server fills in when the command runs
  @JsonKey(defaultValue: '')
  final String template;

  /// The counters being edited, each filled in as the next run would see it
  @JsonKey(includeIfNull: false)
  final List<GuildCommandCounterInputSchema>? counters;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<String> input;
  @JsonKey(includeIfNull: false, name: 'input')
  final String? inputValue;
  final bool _inputPresent;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<SnowflakeType> channelId;
  @JsonKey(includeIfNull: false, name: 'channel_id')
  final SnowflakeType? channelIdValue;
  final bool _channelIdPresent;

  Map<String, Object?> toJson() {
    final json = _$GuildCommandPreviewRequestSchemaToJson(this);
    if (_inputPresent) {
      json.putIfAbsent('input', () => inputValue);
    }
    if (_channelIdPresent) {
      json.putIfAbsent('channel_id', () => channelIdValue);
    }
    return json;
  }
}
