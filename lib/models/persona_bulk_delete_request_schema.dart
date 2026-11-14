// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'snowflake_string_type.dart';

part 'persona_bulk_delete_request_schema.g.dart';

@JsonSerializable()
class PersonaBulkDeleteRequestSchema {
  const PersonaBulkDeleteRequestSchema({required this.personaIds});

  factory PersonaBulkDeleteRequestSchema.fromJson(Map<String, Object?> json) =>
      _$PersonaBulkDeleteRequestSchemaFromJson(json);

  /// The IDs of the personas to delete
  @JsonKey(name: 'persona_ids', defaultValue: <String>[])
  final List<SnowflakeStringType> personaIds;

  Map<String, Object?> toJson() => _$PersonaBulkDeleteRequestSchemaToJson(this);
}
