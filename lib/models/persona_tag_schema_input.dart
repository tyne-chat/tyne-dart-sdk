// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'persona_tag_schema_input.g.dart';

@JsonSerializable()
class PersonaTagSchemaInput {
  const PersonaTagSchemaInput({this.prefix, this.suffix});

  factory PersonaTagSchemaInput.fromJson(Map<String, Object?> json) =>
      _$PersonaTagSchemaInputFromJson(json);

  @JsonKey(includeIfNull: false)
  final String? prefix;
  @JsonKey(includeIfNull: false)
  final String? suffix;

  Map<String, Object?> toJson() => _$PersonaTagSchemaInputToJson(this);
}
