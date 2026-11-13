// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'channel_signal_bar_enabled_request_schema.g.dart';

@JsonSerializable()
class ChannelSignalBarEnabledRequestSchema {
  const ChannelSignalBarEnabledRequestSchema({required this.enabled});

  factory ChannelSignalBarEnabledRequestSchema.fromJson(
    Map<String, Object?> json,
  ) => _$ChannelSignalBarEnabledRequestSchemaFromJson(json);

  @JsonKey(defaultValue: false)
  final bool enabled;

  Map<String, Object?> toJson() =>
      _$ChannelSignalBarEnabledRequestSchemaToJson(this);
}
