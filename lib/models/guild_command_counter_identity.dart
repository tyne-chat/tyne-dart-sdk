// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

/// Whether a persona counts as its own person, or as its account
@JsonEnum()
enum GuildCommandCounterIdentity {
  @JsonValue('persona')
  persona('persona'),
  @JsonValue('account')
  account('account'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const GuildCommandCounterIdentity(this.json);

  factory GuildCommandCounterIdentity.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<GuildCommandCounterIdentity> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}
