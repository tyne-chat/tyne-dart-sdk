// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_tag_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaTagSchema _$PersonaTagSchemaFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PersonaTagSchema', json, ($checkedConvert) {
      final val = PersonaTagSchema(
        prefix: $checkedConvert('prefix', (v) => v as String?),
        suffix: $checkedConvert('suffix', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$PersonaTagSchemaToJson(PersonaTagSchema instance) =>
    <String, dynamic>{'prefix': ?instance.prefix, 'suffix': ?instance.suffix};
