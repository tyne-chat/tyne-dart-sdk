// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_visibility_bulk_request_schema_personas.dart';

part 'persona_visibility_bulk_request_schema.g.dart';

@JsonSerializable()
class PersonaVisibilityBulkRequestSchema {
  const PersonaVisibilityBulkRequestSchema({required this.personas});

  factory PersonaVisibilityBulkRequestSchema.fromJson(
    Map<String, Object?> json,
  ) => _$PersonaVisibilityBulkRequestSchemaFromJson(json);

  /// The personas to change, each with its new visibility
  @JsonKey(defaultValue: <PersonaVisibilityBulkRequestSchemaPersonas>[])
  final List<PersonaVisibilityBulkRequestSchemaPersonas> personas;

  Map<String, Object?> toJson() =>
      _$PersonaVisibilityBulkRequestSchemaToJson(this);
}
