// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'guild_signal_bar_settings_schema.g.dart';

@JsonSerializable()
class GuildSignalBarSettingsSchema {
  const GuildSignalBarSettingsSchema({
    required this.defaultField,
    required this.categories,
    required this.channels,
  });

  factory GuildSignalBarSettingsSchema.fromJson(Map<String, Object?> json) =>
      _$GuildSignalBarSettingsSchemaFromJson(json);

  @JsonKey(name: 'default', defaultValue: false)
  final bool defaultField;
  @JsonKey(defaultValue: <String, bool>{})
  final Map<String, bool> categories;
  @JsonKey(defaultValue: <String, bool>{})
  final Map<String, bool> channels;

  Map<String, Object?> toJson() => _$GuildSignalBarSettingsSchemaToJson(this);
}
