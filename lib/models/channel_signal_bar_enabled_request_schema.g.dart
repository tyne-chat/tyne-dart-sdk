// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_signal_bar_enabled_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelSignalBarEnabledRequestSchema
_$ChannelSignalBarEnabledRequestSchemaFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ChannelSignalBarEnabledRequestSchema', json, (
      $checkedConvert,
    ) {
      final val = ChannelSignalBarEnabledRequestSchema(
        enabled: $checkedConvert('enabled', (v) => v as bool? ?? false),
      );
      return val;
    });

Map<String, dynamic> _$ChannelSignalBarEnabledRequestSchemaToJson(
  ChannelSignalBarEnabledRequestSchema instance,
) => <String, dynamic>{'enabled': instance.enabled};
