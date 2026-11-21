// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'persona_group_update_request_schema.g.dart';

@JsonSerializable()
class PersonaGroupUpdateRequestSchema {
  const PersonaGroupUpdateRequestSchema({required this.name});

  factory PersonaGroupUpdateRequestSchema.fromJson(Map<String, Object?> json) =>
      _$PersonaGroupUpdateRequestSchemaFromJson(json);

  /// The name of the group
  @JsonKey(defaultValue: '')
  final String name;

  Map<String, Object?> toJson() =>
      _$PersonaGroupUpdateRequestSchemaToJson(this);
}
