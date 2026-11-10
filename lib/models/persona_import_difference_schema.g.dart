// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_import_difference_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaImportDifferenceSchema _$PersonaImportDifferenceSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaImportDifferenceSchema', json, ($checkedConvert) {
  final val = PersonaImportDifferenceSchema(
    field: $checkedConvert(
      'field',
      (v) => v == null
          ? PersonaImportFieldSchema.$unknown
          : PersonaImportFieldSchema.fromJson(v as String),
    ),
    change: $checkedConvert(
      'change',
      (v) => v == null
          ? PersonaImportDifferenceSchemaChangeChange.$unknown
          : PersonaImportDifferenceSchemaChangeChange.fromJson(v as String),
    ),
  );
  return val;
});

Map<String, dynamic> _$PersonaImportDifferenceSchemaToJson(
  PersonaImportDifferenceSchema instance,
) => <String, dynamic>{'field': instance.field, 'change': instance.change};
