// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_asset_hash_type.dart';

part 'persona_import_image_ref_schema.g.dart';

class PersonaImportImageRefSchema {
  final Map<String, dynamic> _json;

  const PersonaImportImageRefSchema(this._json);

  factory PersonaImportImageRefSchema.fromJson(Map<String, dynamic> json) =>
      PersonaImportImageRefSchema(json);

  Map<String, dynamic> toJson() => _json;

  PersonaImportImageRefSchemaVariant1 toVariant1() =>
      PersonaImportImageRefSchemaVariant1.fromJson(_json);
}

@JsonSerializable()
class PersonaImportImageRefSchemaVariant1 {
  @JsonKey(includeIfNull: false)
  final String? url;
  @JsonKey(includeIfNull: false)
  final PersonaAssetHashType? hash;

  const PersonaImportImageRefSchemaVariant1({this.url, this.hash});

  factory PersonaImportImageRefSchemaVariant1.fromJson(
    Map<String, dynamic> json,
  ) => _$PersonaImportImageRefSchemaVariant1FromJson(json);

  Map<String, dynamic> toJson() =>
      _$PersonaImportImageRefSchemaVariant1ToJson(this);
}
