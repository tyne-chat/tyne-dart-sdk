// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'snowflake_string_type.dart';
import 'persona_mentionable_by_schema.dart';

part 'persona_mentionable_by_bulk_request_schema_personas.g.dart';

@JsonSerializable()
class PersonaMentionableByBulkRequestSchemaPersonas {
  const PersonaMentionableByBulkRequestSchemaPersonas({
    required this.id,
    required this.mentionableBy,
  });

  factory PersonaMentionableByBulkRequestSchemaPersonas.fromJson(
    Map<String, Object?> json,
  ) => _$PersonaMentionableByBulkRequestSchemaPersonasFromJson(json);

  /// The ID of one of your personas
  @JsonKey(defaultValue: '')
  final SnowflakeStringType id;

  /// Who gets it in mention and search suggestions; null to follow its visibility again
  @JsonKey(includeIfNull: true, name: 'mentionable_by')
  final PersonaMentionableBySchema? mentionableBy;

  Map<String, Object?> toJson() =>
      _$PersonaMentionableByBulkRequestSchemaPersonasToJson(this);
}
