// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'snowflake_string_type.dart';

part 'signal_bar_signal_schema.g.dart';

@JsonSerializable()
class SignalBarSignalSchema {
  const SignalBarSignalSchema({
    required this.id,
    required this.emojiId,
    required this.emojiName,
    required this.animated,
    required this.label,
  });

  factory SignalBarSignalSchema.fromJson(Map<String, Object?> json) =>
      _$SignalBarSignalSchemaFromJson(json);

  /// The unique identifier of the signal within the bar
  @JsonKey(defaultValue: '')
  final String id;

  /// Custom emoji ID (null for Unicode)
  @JsonKey(includeIfNull: true, name: 'emoji_id')
  final SnowflakeStringType? emojiId;

  /// Emoji name or Unicode character
  @JsonKey(name: 'emoji_name', defaultValue: '')
  final String emojiName;

  /// Whether the emoji is animated
  @JsonKey(defaultValue: false)
  final bool animated;

  /// Optional label shown instead of the emoji name
  @JsonKey(includeIfNull: true)
  final String? label;

  Map<String, Object?> toJson() => _$SignalBarSignalSchemaToJson(this);
}
