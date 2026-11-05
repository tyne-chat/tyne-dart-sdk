// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_reaction_body_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddReactionBodySchemaVariant1 _$AddReactionBodySchemaVariant1FromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AddReactionBodySchemaVariant1', json, ($checkedConvert) {
  final val = AddReactionBodySchemaVariant1(
    personaId: $checkedConvert('persona_id', (v) => v as SnowflakeStringType?),
  );
  return val;
}, fieldKeyMap: const {'personaId': 'persona_id'});

Map<String, dynamic> _$AddReactionBodySchemaVariant1ToJson(
  AddReactionBodySchemaVariant1 instance,
) => <String, dynamic>{'persona_id': ?instance.personaId};
