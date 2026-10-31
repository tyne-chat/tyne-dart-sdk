// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guild_command_preview_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuildCommandPreviewRequestSchema _$GuildCommandPreviewRequestSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('GuildCommandPreviewRequestSchema', json, (
  $checkedConvert,
) {
  final val = GuildCommandPreviewRequestSchema._(
    template: $checkedConvert('template', (v) => v as String? ?? ''),
    inputValue: $checkedConvert('input', (v) => v as String?),
    channelIdValue: $checkedConvert('channel_id', (v) => v as SnowflakeType?),
    counters: $checkedConvert(
      'counters',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => GuildCommandCounterInputSchema.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
  );
  return val;
}, fieldKeyMap: const {'inputValue': 'input', 'channelIdValue': 'channel_id'});

Map<String, dynamic> _$GuildCommandPreviewRequestSchemaToJson(
  GuildCommandPreviewRequestSchema instance,
) => <String, dynamic>{
  'template': instance.template,
  'counters': ?instance.counters,
  'input': ?instance.inputValue,
  'channel_id': ?instance.channelIdValue,
};
