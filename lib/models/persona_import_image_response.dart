// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_asset_hash_type.dart';

part 'persona_import_image_response.g.dart';

@JsonSerializable()
class PersonaImportImageResponse {
  const PersonaImportImageResponse({required this.hash, this.avatarColor});

  factory PersonaImportImageResponse.fromJson(Map<String, Object?> json) =>
      _$PersonaImportImageResponseFromJson(json);

  /// Hash of the stored image
  @JsonKey(defaultValue: '')
  final PersonaAssetHashType hash;

  /// Dominant colour, for an avatar
  @JsonKey(includeIfNull: false, name: 'avatar_color')
  final int? avatarColor;

  Map<String, Object?> toJson() => _$PersonaImportImageResponseToJson(this);
}
