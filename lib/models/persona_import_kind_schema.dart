// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

/// up_to_date: linked and identical. differs: linked, with different details. deleted: linked only to a deleted persona. probably_same: the one unlinked persona with the same name and tag. cant_tell: a name or tag in common, but not one-to-one or not both. tag_in_use: a tag is held by another persona or shared with another member. new: none of these
@JsonEnum()
enum PersonaImportKindSchema {
  @JsonValue('up_to_date')
  upToDate('up_to_date'),
  @JsonValue('differs')
  differs('differs'),
  @JsonValue('deleted')
  deleted('deleted'),
  @JsonValue('probably_same')
  probablySame('probably_same'),
  @JsonValue('cant_tell')
  cantTell('cant_tell'),
  @JsonValue('tag_in_use')
  tagInUse('tag_in_use'),

  /// The name has been replaced because it contains a keyword. Original name: `new`.
  @JsonValue('new')
  valueNew('new'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const PersonaImportKindSchema(this.json);

  factory PersonaImportKindSchema.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<PersonaImportKindSchema> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}
