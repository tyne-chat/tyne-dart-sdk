// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'snowflake_string_type.dart';

part 'persona_group_response_schema.g.dart';

@JsonSerializable()
class PersonaGroupResponseSchema {
  const PersonaGroupResponseSchema({
    required this.id,
    required this.name,
    required this.personaIds,
  });

  factory PersonaGroupResponseSchema.fromJson(Map<String, Object?> json) =>
      _$PersonaGroupResponseSchemaFromJson(json);

  /// The ID of the group
  @JsonKey(defaultValue: '')
  final SnowflakeStringType id;

  /// The name of the group
  @JsonKey(defaultValue: '')
  final String name;

  /// The personas in the group, in the order they were added. A deleted persona stays listed, so that restoring it puts it back
  @JsonKey(name: 'persona_ids', defaultValue: <String>[])
  final List<SnowflakeStringType> personaIds;

  Map<String, Object?> toJson() => _$PersonaGroupResponseSchemaToJson(this);
}
