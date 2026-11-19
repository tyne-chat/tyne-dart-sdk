// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'snowflake_string_type.dart';
import 'persona_visibility_schema.dart';

part 'persona_visibility_bulk_request_schema_personas.g.dart';

@JsonSerializable()
class PersonaVisibilityBulkRequestSchemaPersonas {
  const PersonaVisibilityBulkRequestSchemaPersonas({
    required this.id,
    this.visibility,
  });

  factory PersonaVisibilityBulkRequestSchemaPersonas.fromJson(
    Map<String, Object?> json,
  ) => _$PersonaVisibilityBulkRequestSchemaPersonasFromJson(json);

  /// The ID of one of your personas
  @JsonKey(defaultValue: '')
  final SnowflakeStringType id;

  /// The visibility to give it
  @JsonKey(includeIfNull: false)
  final PersonaVisibilitySchema? visibility;

  Map<String, Object?> toJson() =>
      _$PersonaVisibilityBulkRequestSchemaPersonasToJson(this);
}
