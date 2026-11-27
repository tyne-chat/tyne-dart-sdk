// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'snowflake_string_type.dart';

part 'persona_block_response_schema.g.dart';

@JsonSerializable()
class PersonaBlockResponseSchema {
  const PersonaBlockResponseSchema({
    required this.userId,
    required this.personaId,
  });

  factory PersonaBlockResponseSchema.fromJson(Map<String, Object?> json) =>
      _$PersonaBlockResponseSchemaFromJson(json);

  /// The ID of the account the blocked persona belongs to
  @JsonKey(name: 'user_id', defaultValue: '')
  final SnowflakeStringType userId;

  /// The ID of the blocked persona
  @JsonKey(name: 'persona_id', defaultValue: '')
  final SnowflakeStringType personaId;

  Map<String, Object?> toJson() => _$PersonaBlockResponseSchemaToJson(this);
}
