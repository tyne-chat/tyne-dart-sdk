// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_tag_schema.dart';
import 'signature_emoji_schema.dart';
import 'snowflake_string_type.dart';

part 'persona_import_clash_schema.g.dart';

@JsonSerializable()
class PersonaImportClashSchema {
  const PersonaImportClashSchema({
    this.tag,
    this.emoji,
    this.heldByPersonaId,
    this.sharedWithMember,
  });

  factory PersonaImportClashSchema.fromJson(Map<String, Object?> json) =>
      _$PersonaImportClashSchemaFromJson(json);

  /// The tag that clashes
  @JsonKey(includeIfNull: false)
  final PersonaTagSchema? tag;

  /// The signature emoji that clashes
  @JsonKey(includeIfNull: false)
  final SignatureEmojiSchema? emoji;

  /// The live persona that holds it
  @JsonKey(includeIfNull: false, name: 'held_by_persona_id')
  final SnowflakeStringType? heldByPersonaId;

  /// The other member of the file that has it
  @JsonKey(includeIfNull: false, name: 'shared_with_member')
  final int? sharedWithMember;

  Map<String, Object?> toJson() => _$PersonaImportClashSchemaToJson(this);
}
