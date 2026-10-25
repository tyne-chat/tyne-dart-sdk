// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_signal_toggle_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelSignalToggleRequestSchema _$ChannelSignalToggleRequestSchemaFromJson(
  Map<String, dynamic> json,
) =>
    $checkedCreate('ChannelSignalToggleRequestSchema', json, ($checkedConvert) {
      final val = ChannelSignalToggleRequestSchema._(
        personaIdValue: $checkedConvert(
          'persona_id',
          (v) => v as SnowflakeStringType?,
        ),
      );
      return val;
    }, fieldKeyMap: const {'personaIdValue': 'persona_id'});

Map<String, dynamic> _$ChannelSignalToggleRequestSchemaToJson(
  ChannelSignalToggleRequestSchema instance,
) => <String, dynamic>{'persona_id': ?instance.personaIdValue};
