// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_import_candidate_schema_matched_on_matched_on.dart';
import 'snowflake_string_type.dart';

part 'persona_import_candidate_schema.g.dart';

@JsonSerializable()
class PersonaImportCandidateSchema {
  const PersonaImportCandidateSchema({
    required this.personaId,
    required this.matchedOn,
    required this.linkedElsewhere,
  });

  factory PersonaImportCandidateSchema.fromJson(Map<String, Object?> json) =>
      _$PersonaImportCandidateSchemaFromJson(json);

  @JsonKey(name: 'persona_id', defaultValue: '')
  final SnowflakeStringType personaId;

  /// What the member has in common with it
  @JsonKey(
    name: 'matched_on',
    defaultValue: PersonaImportCandidateSchemaMatchedOnMatchedOn.$unknown,
  )
  final PersonaImportCandidateSchemaMatchedOnMatchedOn matchedOn;

  /// Whether the persona is linked to a PluralKit member that is not this one
  @JsonKey(name: 'linked_elsewhere', defaultValue: false)
  final bool linkedElsewhere;

  Map<String, Object?> toJson() => _$PersonaImportCandidateSchemaToJson(this);
}
