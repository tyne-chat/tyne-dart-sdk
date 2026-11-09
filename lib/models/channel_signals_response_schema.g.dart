// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_signals_response_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelSignalsResponseSchema _$ChannelSignalsResponseSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ChannelSignalsResponseSchema', json, ($checkedConvert) {
  final val = ChannelSignalsResponseSchema(
    enabled: $checkedConvert('enabled', (v) => v as bool? ?? false),
    barVersion: $checkedConvert(
      'bar_version',
      (v) => (v as num?)?.toInt() ?? 0,
    ),
    entries: $checkedConvert(
      'entries',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => ChannelSignalEntrySchema.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          [],
    ),
  );
  return val;
}, fieldKeyMap: const {'barVersion': 'bar_version'});

Map<String, dynamic> _$ChannelSignalsResponseSchemaToJson(
  ChannelSignalsResponseSchema instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'bar_version': instance.barVersion,
  'entries': instance.entries,
};
