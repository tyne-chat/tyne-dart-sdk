// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'persona_import_image_sources_schema_banner.g.dart';

@JsonSerializable()
class PersonaImportImageSourcesSchemaBanner {
  const PersonaImportImageSourcesSchemaBanner({this.url});

  factory PersonaImportImageSourcesSchemaBanner.fromJson(
    Map<String, Object?> json,
  ) => _$PersonaImportImageSourcesSchemaBannerFromJson(json);

  /// The link the banner was imported from
  @JsonKey(includeIfNull: false)
  final String? url;

  Map<String, Object?> toJson() =>
      _$PersonaImportImageSourcesSchemaBannerToJson(this);
}
