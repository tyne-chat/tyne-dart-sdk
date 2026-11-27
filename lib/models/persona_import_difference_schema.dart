// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_import_difference_schema_change_change.dart';
import 'persona_import_field_schema.dart';

part 'persona_import_difference_schema.g.dart';

@JsonSerializable()
class PersonaImportDifferenceSchema {
  const PersonaImportDifferenceSchema({
    required this.field,
    required this.change,
  });

  factory PersonaImportDifferenceSchema.fromJson(Map<String, Object?> json) =>
      _$PersonaImportDifferenceSchemaFromJson(json);

  @JsonKey(defaultValue: PersonaImportFieldSchema.$unknown)
  final PersonaImportFieldSchema field;

  /// changed: the file has another value. removed: Tyne has a value and the file has none. not_compared: the picture's origin is unknown, so it cannot be compared. info: shown only, never written (visibility)
  @JsonKey(defaultValue: PersonaImportDifferenceSchemaChangeChange.$unknown)
  final PersonaImportDifferenceSchemaChangeChange change;

  Map<String, Object?> toJson() => _$PersonaImportDifferenceSchemaToJson(this);
}
