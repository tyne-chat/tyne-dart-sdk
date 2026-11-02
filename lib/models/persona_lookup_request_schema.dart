// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_lookup_request_schema_personas.dart';

part 'persona_lookup_request_schema.g.dart';

@JsonSerializable()
class PersonaLookupRequestSchema {
  const PersonaLookupRequestSchema({required this.personas});

  factory PersonaLookupRequestSchema.fromJson(Map<String, Object?> json) =>
      _$PersonaLookupRequestSchemaFromJson(json);

  /// Personas to look up
  @JsonKey(defaultValue: <PersonaLookupRequestSchemaPersonas>[])
  final List<PersonaLookupRequestSchemaPersonas> personas;

  Map<String, Object?> toJson() => _$PersonaLookupRequestSchemaToJson(this);
}
