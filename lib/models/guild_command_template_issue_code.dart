// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

/// unknown_tag, unknown_filter: not one of the template language; not_closed: a tag or output with no end; too_long: the template; too_large: the text it builds; too_slow: it ran out of time; invalid: it cannot be read; failed: it stopped while running
@JsonEnum()
enum GuildCommandTemplateIssueCode {
  @JsonValue('unknown_tag')
  unknownTag('unknown_tag'),
  @JsonValue('unknown_filter')
  unknownFilter('unknown_filter'),
  @JsonValue('not_closed')
  notClosed('not_closed'),
  @JsonValue('too_long')
  tooLong('too_long'),
  @JsonValue('too_large')
  tooLarge('too_large'),
  @JsonValue('too_slow')
  tooSlow('too_slow'),
  @JsonValue('invalid')
  invalid('invalid'),
  @JsonValue('failed')
  failed('failed'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const GuildCommandTemplateIssueCode(this.json);

  factory GuildCommandTemplateIssueCode.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<GuildCommandTemplateIssueCode> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}
