// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

/// add: a new persona from the item (drop_tags leaves tags out). link: record the member's PluralKit id on persona_id, nothing else. restore: bring the deleted persona_id back as it was. use_file: replace persona_id's details with the item's, by the documented field rules
@JsonEnum()
enum PersonaImportActionKindSchema {
  @JsonValue('add')
  add('add'),
  @JsonValue('link')
  link('link'),
  @JsonValue('restore')
  restore('restore'),
  @JsonValue('use_file')
  useFile('use_file'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const PersonaImportActionKindSchema(this.json);

  factory PersonaImportActionKindSchema.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<PersonaImportActionKindSchema> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}
