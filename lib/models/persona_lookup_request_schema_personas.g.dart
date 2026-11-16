// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_lookup_request_schema_personas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaLookupRequestSchemaPersonas _$PersonaLookupRequestSchemaPersonasFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaLookupRequestSchemaPersonas', json, (
  $checkedConvert,
) {
  final val = PersonaLookupRequestSchemaPersonas(
    userId: $checkedConvert('user_id', (v) => v as SnowflakeStringType? ?? ''),
    personaId: $checkedConvert(
      'persona_id',
      (v) => v as SnowflakeStringType? ?? '',
    ),
  );
  return val;
}, fieldKeyMap: const {'userId': 'user_id', 'personaId': 'persona_id'});

Map<String, dynamic> _$PersonaLookupRequestSchemaPersonasToJson(
  PersonaLookupRequestSchemaPersonas instance,
) => <String, dynamic>{
  'user_id': instance.userId,
  'persona_id': instance.personaId,
};
