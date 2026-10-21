// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signal_bar_update_request_schema_signals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignalBarUpdateRequestSchemaSignals
_$SignalBarUpdateRequestSchemaSignalsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SignalBarUpdateRequestSchemaSignals', json, (
      $checkedConvert,
    ) {
      final val = SignalBarUpdateRequestSchemaSignals(
        emojiName: $checkedConvert('emoji_name', (v) => v as String? ?? ''),
        id: $checkedConvert('id', (v) => v as String?),
        emojiId: $checkedConvert('emoji_id', (v) => v as SnowflakeStringType?),
        label: $checkedConvert('label', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'emojiName': 'emoji_name', 'emojiId': 'emoji_id'});

Map<String, dynamic> _$SignalBarUpdateRequestSchemaSignalsToJson(
  SignalBarUpdateRequestSchemaSignals instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'emoji_id': ?instance.emojiId,
  'emoji_name': instance.emojiName,
  'label': ?instance.label,
};
