// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'snowflake_string_type.dart';

part 'persona_lookup_request_schema_personas.g.dart';

@JsonSerializable()
class PersonaLookupRequestSchemaPersonas {
  const PersonaLookupRequestSchemaPersonas({
    required this.userId,
    required this.personaId,
  });

  factory PersonaLookupRequestSchemaPersonas.fromJson(
    Map<String, Object?> json,
  ) => _$PersonaLookupRequestSchemaPersonasFromJson(json);

  /// The persona owner’s user ID
  @JsonKey(name: 'user_id', defaultValue: '')
  final SnowflakeStringType userId;

  /// The persona’s ID
  @JsonKey(name: 'persona_id', defaultValue: '')
  final SnowflakeStringType personaId;

  Map<String, Object?> toJson() =>
      _$PersonaLookupRequestSchemaPersonasToJson(this);
}
