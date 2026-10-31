// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guild_command_counter_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuildCommandCounterSchema _$GuildCommandCounterSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('GuildCommandCounterSchema', json, ($checkedConvert) {
  final val = GuildCommandCounterSchema(
    id: $checkedConvert('id', (v) => v as SnowflakeStringType? ?? ''),
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
          ? GuildCommandCounterIdentity.$unknown
          : GuildCommandCounterIdentity.fromJson(v as String),
    ),
  );
  return val;
});

Map<String, dynamic> _$GuildCommandCounterSchemaToJson(
  GuildCommandCounterSchema instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'per': instance.per,
  'identity': instance.identity,
};
