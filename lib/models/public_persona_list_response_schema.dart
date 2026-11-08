// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_asset_hash_type.dart';
import 'public_persona_response_schema.dart';

part 'public_persona_list_response_schema.g.dart';

@JsonSerializable()
class PublicPersonaListResponseSchema {
  const PublicPersonaListResponseSchema({
    required this.personas,
    this.displayTagText,
    this.displayTagIcon,
  });

  factory PublicPersonaListResponseSchema.fromJson(Map<String, Object?> json) =>
      _$PublicPersonaListResponseSchemaFromJson(json);

  /// The account's display tag text, shown after its name and its personas' names
  @JsonKey(includeIfNull: false, name: 'display_tag_text')
  final String? displayTagText;

  /// Hash of the display tag icon, an image stored under the account
  @JsonKey(includeIfNull: false, name: 'display_tag_icon')
  final PersonaAssetHashType? displayTagIcon;

  /// The account's public personas, the most used first. Private and unlisted personas are left out
  @JsonKey(defaultValue: <PublicPersonaResponseSchema>[])
  final List<PublicPersonaResponseSchema> personas;

  Map<String, Object?> toJson() =>
      _$PublicPersonaListResponseSchemaToJson(this);
}
