// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signal_bar_response_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignalBarResponseSchema _$SignalBarResponseSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SignalBarResponseSchema', json, ($checkedConvert) {
  final val = SignalBarResponseSchema(
    version: $checkedConvert('version', (v) => (v as num?)?.toInt() ?? 0),
    signals: $checkedConvert(
      'signals',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) =>
                    SignalBarSignalSchema.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
    ),
    guildId: $checkedConvert('guild_id', (v) => v as SnowflakeStringType?),
    canManage: $checkedConvert('can_manage', (v) => v as bool? ?? false),
  );
  return val;
}, fieldKeyMap: const {'guildId': 'guild_id', 'canManage': 'can_manage'});

Map<String, dynamic> _$SignalBarResponseSchemaToJson(
  SignalBarResponseSchema instance,
) => <String, dynamic>{
  'version': instance.version,
  'signals': instance.signals,
  'guild_id': instance.guildId,
  'can_manage': instance.canManage,
};
