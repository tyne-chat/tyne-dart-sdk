// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'signal_bar_signal_schema.dart';
import 'snowflake_string_type.dart';

part 'signal_bar_response_schema.g.dart';

@JsonSerializable()
class SignalBarResponseSchema {
  const SignalBarResponseSchema({
    required this.version,
    required this.signals,
    required this.guildId,
    required this.canManage,
  });

  factory SignalBarResponseSchema.fromJson(Map<String, Object?> json) =>
      _$SignalBarResponseSchemaFromJson(json);

  /// Incremented on every change to the bar
  @JsonKey(defaultValue: 0)
  final int version;
  @JsonKey(defaultValue: <SignalBarSignalSchema>[])
  final List<SignalBarSignalSchema> signals;

  /// The home community that owns the bar
  @JsonKey(includeIfNull: true, name: 'guild_id')
  final SnowflakeStringType? guildId;

  /// Whether the requesting user may edit the bar
  @JsonKey(name: 'can_manage', defaultValue: false)
  final bool canManage;

  Map<String, Object?> toJson() => _$SignalBarResponseSchemaToJson(this);
}
