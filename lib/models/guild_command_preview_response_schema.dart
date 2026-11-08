// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'guild_command_template_issue_schema.dart';

part 'guild_command_preview_response_schema.g.dart';

@JsonSerializable()
class GuildCommandPreviewResponseSchema {
  const GuildCommandPreviewResponseSchema({
    required this.content,
    required this.issue,
  });

  factory GuildCommandPreviewResponseSchema.fromJson(
    Map<String, Object?> json,
  ) => _$GuildCommandPreviewResponseSchemaFromJson(json);

  /// The filled-in message; null when the template has a problem
  @JsonKey(includeIfNull: true)
  final String? content;

  /// What stopped the template; null when it worked
  @JsonKey(includeIfNull: true)
  final GuildCommandTemplateIssueSchema? issue;

  Map<String, Object?> toJson() =>
      _$GuildCommandPreviewResponseSchemaToJson(this);
}
