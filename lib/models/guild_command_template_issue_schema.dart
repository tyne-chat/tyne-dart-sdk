// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'guild_command_template_issue_code.dart';

part 'guild_command_template_issue_schema.g.dart';

@JsonSerializable()
class GuildCommandTemplateIssueSchema {
  const GuildCommandTemplateIssueSchema({
    required this.code,
    required this.line,
    required this.column,
    required this.name,
  });

  factory GuildCommandTemplateIssueSchema.fromJson(Map<String, Object?> json) =>
      _$GuildCommandTemplateIssueSchemaFromJson(json);

  @JsonKey(defaultValue: GuildCommandTemplateIssueCode.$unknown)
  final GuildCommandTemplateIssueCode code;

  /// The line of the problem, counted from 1, when it has one
  @JsonKey(includeIfNull: true)
  final int? line;

  /// The column of the problem, counted from 1, when it has one
  @JsonKey(includeIfNull: true)
  final int? column;

  /// The tag or filter concerned, when there is one
  @JsonKey(includeIfNull: true)
  final String? name;

  Map<String, Object?> toJson() =>
      _$GuildCommandTemplateIssueSchemaToJson(this);
}
