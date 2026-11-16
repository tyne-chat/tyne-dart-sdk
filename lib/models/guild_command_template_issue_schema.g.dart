// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guild_command_template_issue_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuildCommandTemplateIssueSchema _$GuildCommandTemplateIssueSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('GuildCommandTemplateIssueSchema', json, ($checkedConvert) {
  final val = GuildCommandTemplateIssueSchema(
    code: $checkedConvert(
      'code',
      (v) => v == null
          ? GuildCommandTemplateIssueCode.$unknown
          : GuildCommandTemplateIssueCode.fromJson(v as String),
    ),
    line: $checkedConvert('line', (v) => (v as num?)?.toInt()),
    column: $checkedConvert('column', (v) => (v as num?)?.toInt()),
    name: $checkedConvert('name', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$GuildCommandTemplateIssueSchemaToJson(
  GuildCommandTemplateIssueSchema instance,
) => <String, dynamic>{
  'code': instance.code,
  'line': instance.line,
  'column': instance.column,
  'name': instance.name,
};
