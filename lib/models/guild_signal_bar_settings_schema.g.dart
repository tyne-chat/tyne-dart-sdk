// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guild_signal_bar_settings_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuildSignalBarSettingsSchema _$GuildSignalBarSettingsSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('GuildSignalBarSettingsSchema', json, ($checkedConvert) {
  final val = GuildSignalBarSettingsSchema(
    defaultField: $checkedConvert('default', (v) => v as bool? ?? false),
    categories: $checkedConvert(
      'categories',
      (v) =>
          (v as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as bool)) ??
          {},
    ),
    channels: $checkedConvert(
      'channels',
      (v) =>
          (v as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as bool)) ??
          {},
    ),
  );
  return val;
}, fieldKeyMap: const {'defaultField': 'default'});

Map<String, dynamic> _$GuildSignalBarSettingsSchemaToJson(
  GuildSignalBarSettingsSchema instance,
) => <String, dynamic>{
  'default': instance.defaultField,
  'categories': instance.categories,
  'channels': instance.channels,
};
