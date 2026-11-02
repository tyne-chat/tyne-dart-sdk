// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_import_image_kind_schema.dart';

part 'persona_import_image_request.g.dart';

@JsonSerializable()
class PersonaImportImageRequest {
  const PersonaImportImageRequest({required this.kind, required this.image});

  factory PersonaImportImageRequest.fromJson(Map<String, Object?> json) =>
      _$PersonaImportImageRequestFromJson(json);

  /// Whether the image is an avatar or a banner
  @JsonKey(defaultValue: PersonaImportImageKindSchema.$unknown)
  final PersonaImportImageKindSchema kind;

  /// Base64 data URI of the image
  @JsonKey(defaultValue: '')
  final String image;

  Map<String, Object?> toJson() => _$PersonaImportImageRequestToJson(this);
}
