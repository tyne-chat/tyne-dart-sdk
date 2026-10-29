// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_tag_schema_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaTagSchemaInput _$PersonaTagSchemaInputFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaTagSchemaInput', json, ($checkedConvert) {
  final val = PersonaTagSchemaInput(
    prefix: $checkedConvert('prefix', (v) => v as String?),
    suffix: $checkedConvert('suffix', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$PersonaTagSchemaInputToJson(
  PersonaTagSchemaInput instance,
) => <String, dynamic>{'prefix': ?instance.prefix, 'suffix': ?instance.suffix};
