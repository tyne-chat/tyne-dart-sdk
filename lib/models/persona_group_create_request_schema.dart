// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'snowflake_string_type.dart';

part 'persona_group_create_request_schema.g.dart';

@JsonSerializable()
class PersonaGroupCreateRequestSchema {
  const PersonaGroupCreateRequestSchema({required this.name, this.personaIds});

  factory PersonaGroupCreateRequestSchema.fromJson(Map<String, Object?> json) =>
      _$PersonaGroupCreateRequestSchemaFromJson(json);

  /// The name of the group
  @JsonKey(defaultValue: '')
  final String name;

  /// Personas of yours to put in the new group
  @JsonKey(includeIfNull: false, name: 'persona_ids')
  final List<SnowflakeStringType>? personaIds;

  Map<String, Object?> toJson() =>
      _$PersonaGroupCreateRequestSchemaToJson(this);
}
