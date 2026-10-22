// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_asset_hash_type.dart';

part 'persona_banner_upload_response.g.dart';

@JsonSerializable()
class PersonaBannerUploadResponse {
  const PersonaBannerUploadResponse({required this.bannerHash});

  factory PersonaBannerUploadResponse.fromJson(Map<String, Object?> json) =>
      _$PersonaBannerUploadResponseFromJson(json);

  /// Hash of the uploaded banner
  @JsonKey(name: 'banner_hash', defaultValue: '')
  final PersonaAssetHashType bannerHash;

  Map<String, Object?> toJson() => _$PersonaBannerUploadResponseToJson(this);
}
