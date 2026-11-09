// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_asset_hash_type.dart';
import 'persona_import_candidate_schema.dart';
import 'persona_import_clash_schema.dart';
import 'persona_import_difference_schema.dart';
import 'persona_import_kind_schema.dart';
import 'snowflake_string_type.dart';

part 'persona_import_preview_entry_schema.g.dart';

@JsonSerializable()
class PersonaImportPreviewEntrySchema {
  const PersonaImportPreviewEntrySchema({
    required this.indexField,
    required this.kind,
    this.personaId,
    this.candidates,
    this.differences,
    this.clashes,
    this.avatarHash,
    this.bannerHash,
  });

  factory PersonaImportPreviewEntrySchema.fromJson(Map<String, Object?> json) =>
      _$PersonaImportPreviewEntrySchemaFromJson(json);

  @JsonKey(name: 'index', defaultValue: 0)
  final int indexField;
  @JsonKey(defaultValue: PersonaImportKindSchema.$unknown)
  final PersonaImportKindSchema kind;

  /// The persona it is linked to, deleted in Tyne as, or probably the same as
  @JsonKey(includeIfNull: false, name: 'persona_id')
  final SnowflakeStringType? personaId;

  /// For cant_tell, the personas it may be
  @JsonKey(includeIfNull: false)
  final List<PersonaImportCandidateSchema>? candidates;

  /// For differs and up_to_date, field by field
  @JsonKey(includeIfNull: false)
  final List<PersonaImportDifferenceSchema>? differences;

  /// Tags and signature emojis a plain add would clash on
  @JsonKey(includeIfNull: false)
  final List<PersonaImportClashSchema>? clashes;

  /// A stored copy of the member's avatar, safe to show
  @JsonKey(includeIfNull: false, name: 'avatar_hash')
  final PersonaAssetHashType? avatarHash;

  /// A stored copy of the member's banner, safe to show
  @JsonKey(includeIfNull: false, name: 'banner_hash')
  final PersonaAssetHashType? bannerHash;

  Map<String, Object?> toJson() =>
      _$PersonaImportPreviewEntrySchemaToJson(this);
}
