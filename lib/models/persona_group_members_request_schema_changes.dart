// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'snowflake_string_type.dart';

part 'persona_group_members_request_schema_changes.g.dart';

@JsonSerializable()
class PersonaGroupMembersRequestSchemaChanges {
  const PersonaGroupMembersRequestSchemaChanges({
    required this.groupId,
    this.add,
    this.remove,
  });

  factory PersonaGroupMembersRequestSchemaChanges.fromJson(
    Map<String, Object?> json,
  ) => _$PersonaGroupMembersRequestSchemaChangesFromJson(json);

  /// The ID of one of your groups
  @JsonKey(name: 'group_id', defaultValue: '')
  final SnowflakeStringType groupId;

  /// Personas of yours to put in the group
  @JsonKey(includeIfNull: false)
  final List<SnowflakeStringType>? add;

  /// Personas to take out of the group
  @JsonKey(includeIfNull: false)
  final List<SnowflakeStringType>? remove;

  Map<String, Object?> toJson() =>
      _$PersonaGroupMembersRequestSchemaChangesToJson(this);
}
