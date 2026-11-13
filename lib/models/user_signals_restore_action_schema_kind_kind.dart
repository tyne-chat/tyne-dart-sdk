// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

/// What the last change everywhere was: a signal set everywhere, every signal off, or a restore
@JsonEnum()
enum UserSignalsRestoreActionSchemaKindKind {
  /// The name has been replaced because it contains a keyword. Original name: `set`.
  @JsonValue('set')
  valueSet('set'),
  @JsonValue('off')
  off('off'),
  @JsonValue('restore')
  restore('restore'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const UserSignalsRestoreActionSchemaKindKind(this.json);

  factory UserSignalsRestoreActionSchemaKindKind.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<UserSignalsRestoreActionSchemaKindKind> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}
