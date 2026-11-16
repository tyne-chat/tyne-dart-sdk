// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'channel_signal_entry_schema.dart';

part 'channel_signals_response_schema.g.dart';

@JsonSerializable()
class ChannelSignalsResponseSchema {
  const ChannelSignalsResponseSchema({
    required this.enabled,
    required this.barVersion,
    required this.entries,
  });

  factory ChannelSignalsResponseSchema.fromJson(Map<String, Object?> json) =>
      _$ChannelSignalsResponseSchemaFromJson(json);

  /// Whether the signal bar is switched on in this channel
  @JsonKey(defaultValue: false)
  final bool enabled;
  @JsonKey(name: 'bar_version', defaultValue: 0)
  final int barVersion;
  @JsonKey(defaultValue: <ChannelSignalEntrySchema>[])
  final List<ChannelSignalEntrySchema> entries;

  Map<String, Object?> toJson() => _$ChannelSignalsResponseSchemaToJson(this);
}
