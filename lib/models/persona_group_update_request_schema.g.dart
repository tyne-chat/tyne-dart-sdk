// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_group_update_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaGroupUpdateRequestSchema _$PersonaGroupUpdateRequestSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaGroupUpdateRequestSchema', json, ($checkedConvert) {
  final val = PersonaGroupUpdateRequestSchema(
    name: $checkedConvert('name', (v) => v as String? ?? ''),
  );
  return val;
});

Map<String, dynamic> _$PersonaGroupUpdateRequestSchemaToJson(
  PersonaGroupUpdateRequestSchema instance,
) => <String, dynamic>{'name': instance.name};
