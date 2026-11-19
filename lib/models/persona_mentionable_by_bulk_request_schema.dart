// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_mentionable_by_bulk_request_schema_personas.dart';

part 'persona_mentionable_by_bulk_request_schema.g.dart';

@JsonSerializable()
class PersonaMentionableByBulkRequestSchema {
  const PersonaMentionableByBulkRequestSchema({required this.personas});

  factory PersonaMentionableByBulkRequestSchema.fromJson(
    Map<String, Object?> json,
  ) => _$PersonaMentionableByBulkRequestSchemaFromJson(json);

  /// The personas to change, each with its new setting
  @JsonKey(defaultValue: <PersonaMentionableByBulkRequestSchemaPersonas>[])
  final List<PersonaMentionableByBulkRequestSchemaPersonas> personas;

  Map<String, Object?> toJson() =>
      _$PersonaMentionableByBulkRequestSchemaToJson(this);
}
