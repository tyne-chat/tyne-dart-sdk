// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'persona_avatar_import_request.g.dart';

@JsonSerializable()
class PersonaAvatarImportRequest {
  const PersonaAvatarImportRequest({required this.url});

  factory PersonaAvatarImportRequest.fromJson(Map<String, Object?> json) =>
      _$PersonaAvatarImportRequestFromJson(json);

  /// Remote URL of the avatar image to import
  @JsonKey(defaultValue: '')
  final String url;

  Map<String, Object?> toJson() => _$PersonaAvatarImportRequestToJson(this);
}
