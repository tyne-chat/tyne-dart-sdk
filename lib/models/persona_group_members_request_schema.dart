// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_group_members_request_schema_changes.dart';

part 'persona_group_members_request_schema.g.dart';

@JsonSerializable()
class PersonaGroupMembersRequestSchema {
  const PersonaGroupMembersRequestSchema({required this.changes});

  factory PersonaGroupMembersRequestSchema.fromJson(
    Map<String, Object?> json,
  ) => _$PersonaGroupMembersRequestSchemaFromJson(json);

  /// The groups to change
  @JsonKey(defaultValue: <PersonaGroupMembersRequestSchemaChanges>[])
  final List<PersonaGroupMembersRequestSchemaChanges> changes;

  Map<String, Object?> toJson() =>
      _$PersonaGroupMembersRequestSchemaToJson(this);
}
