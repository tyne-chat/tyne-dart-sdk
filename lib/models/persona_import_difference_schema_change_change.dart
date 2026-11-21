// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

/// changed: the file has another value. removed: Tyne has a value and the file has none. not_compared: the picture's origin is unknown, so it cannot be compared. info: shown only, never written (visibility)
@JsonEnum()
enum PersonaImportDifferenceSchemaChangeChange {
  @JsonValue('changed')
  changed('changed'),
  @JsonValue('removed')
  removed('removed'),
  @JsonValue('not_compared')
  notCompared('not_compared'),
  @JsonValue('info')
  info('info'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const PersonaImportDifferenceSchemaChangeChange(this.json);

  factory PersonaImportDifferenceSchemaChangeChange.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<PersonaImportDifferenceSchemaChangeChange> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}
