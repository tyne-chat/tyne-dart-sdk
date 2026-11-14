// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_import_action_schema.dart';
import 'persona_import_source_kind_schema.dart';

part 'persona_import_apply_request_schema.g.dart';

@JsonSerializable()
class PersonaImportApplyRequestSchema {
  const PersonaImportApplyRequestSchema({
    required this.source,
    required this.actions,
  });

  factory PersonaImportApplyRequestSchema.fromJson(Map<String, Object?> json) =>
      _$PersonaImportApplyRequestSchemaFromJson(json);

  @JsonKey(defaultValue: PersonaImportSourceKindSchema.$unknown)
  final PersonaImportSourceKindSchema source;

  /// Skipped members are left out
  @JsonKey(defaultValue: <PersonaImportActionSchema>[])
  final List<PersonaImportActionSchema> actions;

  Map<String, Object?> toJson() =>
      _$PersonaImportApplyRequestSchemaToJson(this);
}
