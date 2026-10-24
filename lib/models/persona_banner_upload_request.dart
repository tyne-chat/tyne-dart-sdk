// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'persona_banner_upload_request.g.dart';

@JsonSerializable()
class PersonaBannerUploadRequest {
  const PersonaBannerUploadRequest({required this.banner});

  factory PersonaBannerUploadRequest.fromJson(Map<String, Object?> json) =>
      _$PersonaBannerUploadRequestFromJson(json);

  /// Base64 data URI of the banner image
  @JsonKey(defaultValue: '')
  final String banner;

  Map<String, Object?> toJson() => _$PersonaBannerUploadRequestToJson(this);
}
