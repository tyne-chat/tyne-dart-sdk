// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'snowflake_string_type.dart';

part 'add_reaction_body_schema.g.dart';

class AddReactionBodySchema {
  final Map<String, dynamic> _json;

  const AddReactionBodySchema(this._json);

  factory AddReactionBodySchema.fromJson(Map<String, dynamic> json) =>
      AddReactionBodySchema(json);

  Map<String, dynamic> toJson() => _json;

  AddReactionBodySchemaVariant1 toVariant1() =>
      AddReactionBodySchemaVariant1.fromJson(_json);
}

@JsonSerializable()
class AddReactionBodySchemaVariant1 {
  @JsonKey(includeIfNull: false, name: 'persona_id')
  final SnowflakeStringType? personaId;

  const AddReactionBodySchemaVariant1({this.personaId});

  factory AddReactionBodySchemaVariant1.fromJson(Map<String, dynamic> json) =>
      _$AddReactionBodySchemaVariant1FromJson(json);

  Map<String, dynamic> toJson() => _$AddReactionBodySchemaVariant1ToJson(this);
}
