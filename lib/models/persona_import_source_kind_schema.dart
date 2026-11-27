// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

/// pluralkit for a PluralKit export; tyne for a Tyne export, which also carries signature emojis and auto-tag
@JsonEnum()
enum PersonaImportSourceKindSchema {
  @JsonValue('pluralkit')
  pluralkit('pluralkit'),
  @JsonValue('tyne')
  tyne('tyne'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const PersonaImportSourceKindSchema(this.json);

  factory PersonaImportSourceKindSchema.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<PersonaImportSourceKindSchema> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}
