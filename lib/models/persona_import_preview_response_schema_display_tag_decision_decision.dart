// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

/// none: the file has no tag, or the same one. auto_apply: the account has no personas and no display tag, so the file's is used. ask: it differs
@JsonEnum()
enum PersonaImportPreviewResponseSchemaDisplayTagDecisionDecision {
  @JsonValue('none')
  none('none'),
  @JsonValue('auto_apply')
  autoApply('auto_apply'),
  @JsonValue('ask')
  ask('ask'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const PersonaImportPreviewResponseSchemaDisplayTagDecisionDecision(this.json);

  factory PersonaImportPreviewResponseSchemaDisplayTagDecisionDecision.fromJson(
    String json,
  ) => values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<PersonaImportPreviewResponseSchemaDisplayTagDecisionDecision>
  get $valuesDefined => values.where((value) => value != $unknown).toList();
}
