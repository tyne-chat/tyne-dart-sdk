// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'snowflake_string_type.dart';

part 'signal_bar_update_request_schema_signals.g.dart';

@JsonSerializable()
class SignalBarUpdateRequestSchemaSignals {
  const SignalBarUpdateRequestSchemaSignals({
    required this.emojiName,
    this.id,
    this.emojiId,
    this.label,
  });

  factory SignalBarUpdateRequestSchemaSignals.fromJson(
    Map<String, Object?> json,
  ) => _$SignalBarUpdateRequestSchemaSignalsFromJson(json);

  /// The unique identifier of the signal within the bar
  @JsonKey(includeIfNull: false)
  final String? id;

  /// Custom emoji ID (null for Unicode)
  @JsonKey(includeIfNull: false, name: 'emoji_id')
  final SnowflakeStringType? emojiId;

  /// Emoji name or Unicode character
  @JsonKey(name: 'emoji_name', defaultValue: '')
  final String emojiName;
  @JsonKey(includeIfNull: false)
  final String? label;

  Map<String, Object?> toJson() =>
      _$SignalBarUpdateRequestSchemaSignalsToJson(this);
}
