// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum PersonaImportFieldSchema {
  @JsonValue('name')
  name('name'),
  @JsonValue('pronouns')
  pronouns('pronouns'),
  @JsonValue('bio')
  bio('bio'),
  @JsonValue('color')
  color('color'),
  @JsonValue('persona_tags')
  personaTags('persona_tags'),
  @JsonValue('avatar')
  avatar('avatar'),
  @JsonValue('banner')
  banner('banner'),
  @JsonValue('signature_emojis')
  signatureEmojis('signature_emojis'),
  @JsonValue('auto_tag_disabled')
  autoTagDisabled('auto_tag_disabled'),
  @JsonValue('visibility')
  visibility('visibility'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const PersonaImportFieldSchema(this.json);

  factory PersonaImportFieldSchema.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<PersonaImportFieldSchema> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}
