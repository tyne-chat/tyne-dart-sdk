// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_block_response_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaBlockResponseSchema _$PersonaBlockResponseSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaBlockResponseSchema', json, ($checkedConvert) {
  final val = PersonaBlockResponseSchema(
    userId: $checkedConvert('user_id', (v) => v as SnowflakeStringType? ?? ''),
    personaId: $checkedConvert(
      'persona_id',
      (v) => v as SnowflakeStringType? ?? '',
    ),
  );
  return val;
}, fieldKeyMap: const {'userId': 'user_id', 'personaId': 'persona_id'});

Map<String, dynamic> _$PersonaBlockResponseSchemaToJson(
  PersonaBlockResponseSchema instance,
) => <String, dynamic>{
  'user_id': instance.userId,
  'persona_id': instance.personaId,
};
