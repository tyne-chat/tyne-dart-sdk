// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signal_bar_signal_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignalBarSignalSchema _$SignalBarSignalSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SignalBarSignalSchema', json, ($checkedConvert) {
  final val = SignalBarSignalSchema(
    id: $checkedConvert('id', (v) => v as String? ?? ''),
    emojiId: $checkedConvert('emoji_id', (v) => v as SnowflakeStringType?),
    emojiName: $checkedConvert('emoji_name', (v) => v as String? ?? ''),
    animated: $checkedConvert('animated', (v) => v as bool? ?? false),
    label: $checkedConvert('label', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {'emojiId': 'emoji_id', 'emojiName': 'emoji_name'});

Map<String, dynamic> _$SignalBarSignalSchemaToJson(
  SignalBarSignalSchema instance,
) => <String, dynamic>{
  'id': instance.id,
  'emoji_id': instance.emojiId,
  'emoji_name': instance.emojiName,
  'animated': instance.animated,
  'label': instance.label,
};
