// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

/// What the member has in common with it
@JsonEnum()
enum PersonaImportCandidateSchemaMatchedOnMatchedOn {
  @JsonValue('name')
  name('name'),
  @JsonValue('tag')
  tag('tag'),
  @JsonValue('name_and_tag')
  nameAndTag('name_and_tag'),
  @JsonValue('tag_case')
  tagCase('tag_case'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const PersonaImportCandidateSchemaMatchedOnMatchedOn(this.json);

  factory PersonaImportCandidateSchemaMatchedOnMatchedOn.fromJson(
    String json,
  ) => values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<PersonaImportCandidateSchemaMatchedOnMatchedOn>
  get $valuesDefined => values.where((value) => value != $unknown).toList();
}
