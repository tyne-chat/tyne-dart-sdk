// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_asset_hash_type.dart';

part 'persona_avatar_upload_response.g.dart';

@JsonSerializable()
class PersonaAvatarUploadResponse {
  const PersonaAvatarUploadResponse({
    required this.avatarHash,
    this.avatarColor,
  });

  factory PersonaAvatarUploadResponse.fromJson(Map<String, Object?> json) =>
      _$PersonaAvatarUploadResponseFromJson(json);

  /// Hash of the uploaded avatar
  @JsonKey(name: 'avatar_hash', defaultValue: '')
  final PersonaAssetHashType avatarHash;

  /// Dominant avatar color
  @JsonKey(includeIfNull: false, name: 'avatar_color')
  final int? avatarColor;

  Map<String, Object?> toJson() => _$PersonaAvatarUploadResponseToJson(this);
}
