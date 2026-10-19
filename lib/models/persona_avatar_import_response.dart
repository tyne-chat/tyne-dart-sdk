// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_asset_hash_type.dart';

part 'persona_avatar_import_response.g.dart';

@JsonSerializable()
class PersonaAvatarImportResponse {
  const PersonaAvatarImportResponse({
    required this.avatarHash,
    this.avatarColor,
  });

  factory PersonaAvatarImportResponse.fromJson(Map<String, Object?> json) =>
      _$PersonaAvatarImportResponseFromJson(json);

  /// Hash of the imported avatar
  @JsonKey(name: 'avatar_hash', defaultValue: '')
  final PersonaAssetHashType avatarHash;

  /// Dominant avatar color
  @JsonKey(includeIfNull: false, name: 'avatar_color')
  final int? avatarColor;

  Map<String, Object?> toJson() => _$PersonaAvatarImportResponseToJson(this);
}
