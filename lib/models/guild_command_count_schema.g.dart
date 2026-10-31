// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guild_command_count_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuildCommandCountSchema _$GuildCommandCountSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('GuildCommandCountSchema', json, ($checkedConvert) {
  final val = GuildCommandCountSchema(
    counterId: $checkedConvert(
      'counter_id',
      (v) => v as SnowflakeStringType? ?? '',
    ),
    scopeKey: $checkedConvert('scope_key', (v) => v as String? ?? ''),
    value: $checkedConvert('value', (v) => (v as num?)?.toInt() ?? 0),
  );
  return val;
}, fieldKeyMap: const {'counterId': 'counter_id', 'scopeKey': 'scope_key'});

Map<String, dynamic> _$GuildCommandCountSchemaToJson(
  GuildCommandCountSchema instance,
) => <String, dynamic>{
  'counter_id': instance.counterId,
  'scope_key': instance.scopeKey,
  'value': instance.value,
};
