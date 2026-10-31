// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guild_command_counter_input_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuildCommandCounterInputSchema _$GuildCommandCounterInputSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('GuildCommandCounterInputSchema', json, ($checkedConvert) {
  final val = GuildCommandCounterInputSchema._(
    name: $checkedConvert('name', (v) => v as String? ?? ''),
    per: $checkedConvert(
      'per',
      (v) =>
          (v as List<dynamic>?)
              ?.map((e) => GuildCommandCounterPart.fromJson(e as String))
              .toList() ??
          [],
    ),
    identity: $checkedConvert(
      'identity',
      (v) => v == null
          ? GuildCommandCounterIdentity.persona
          : GuildCommandCounterIdentity.fromJson(v as String),
    ),
    idValue: $checkedConvert('id', (v) => v as SnowflakeStringType?),
  );
  return val;
}, fieldKeyMap: const {'idValue': 'id'});

Map<String, dynamic> _$GuildCommandCounterInputSchemaToJson(
  GuildCommandCounterInputSchema instance,
) => <String, dynamic>{
  'name': instance.name,
  'per': instance.per,
  'identity': instance.identity,
  'id': ?instance.idValue,
};
