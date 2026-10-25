// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'persona_avatar_upload_request.g.dart';

@JsonSerializable()
class PersonaAvatarUploadRequest {
  const PersonaAvatarUploadRequest({required this.avatar});

  factory PersonaAvatarUploadRequest.fromJson(Map<String, Object?> json) =>
      _$PersonaAvatarUploadRequestFromJson(json);

  /// Base64 data URI of the avatar image
  @JsonKey(defaultValue: '')
  final String avatar;

  Map<String, Object?> toJson() => _$PersonaAvatarUploadRequestToJson(this);
}
