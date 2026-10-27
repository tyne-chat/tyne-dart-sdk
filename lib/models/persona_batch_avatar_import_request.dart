// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_import_image_kind_schema.dart';

part 'persona_batch_avatar_import_request.g.dart';

@JsonSerializable()
class PersonaBatchAvatarImportRequest {
  const PersonaBatchAvatarImportRequest({required this.urls, this.kind});

  factory PersonaBatchAvatarImportRequest.fromJson(Map<String, Object?> json) =>
      _$PersonaBatchAvatarImportRequestFromJson(json);

  /// List of remote avatar URLs to import
  @JsonKey(defaultValue: <String>[])
  final List<String> urls;

  /// Whether the links are avatars or banners; avatars when absent
  @JsonKey(includeIfNull: false)
  final PersonaImportImageKindSchema? kind;

  Map<String, Object?> toJson() =>
      _$PersonaBatchAvatarImportRequestToJson(this);
}
