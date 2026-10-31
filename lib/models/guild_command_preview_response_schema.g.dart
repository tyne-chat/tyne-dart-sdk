// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guild_command_preview_response_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuildCommandPreviewResponseSchema _$GuildCommandPreviewResponseSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('GuildCommandPreviewResponseSchema', json, (
  $checkedConvert,
) {
  final val = GuildCommandPreviewResponseSchema(
    content: $checkedConvert('content', (v) => v as String?),
    issue: $checkedConvert(
      'issue',
      (v) => v == null
          ? null
          : GuildCommandTemplateIssueSchema.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$GuildCommandPreviewResponseSchemaToJson(
  GuildCommandPreviewResponseSchema instance,
) => <String, dynamic>{'content': instance.content, 'issue': instance.issue};
