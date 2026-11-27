// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_import_apply_response_schema_dropped.dart';
import 'persona_response_schema.dart';

part 'persona_import_apply_response_schema.g.dart';

@JsonSerializable()
class PersonaImportApplyResponseSchema {
  const PersonaImportApplyResponseSchema({
    required this.personas,
    required this.dropped,
  });

  factory PersonaImportApplyResponseSchema.fromJson(
    Map<String, Object?> json,
  ) => _$PersonaImportApplyResponseSchemaFromJson(json);

  /// The personas written, in action order
  @JsonKey(defaultValue: <PersonaResponseSchema>[])
  final List<PersonaResponseSchema> personas;

  /// For restored personas: tags and signature emojis left off because another persona holds them now
  @JsonKey(defaultValue: <PersonaImportApplyResponseSchemaDropped>[])
  final List<PersonaImportApplyResponseSchemaDropped> dropped;

  Map<String, Object?> toJson() =>
      _$PersonaImportApplyResponseSchemaToJson(this);
}
