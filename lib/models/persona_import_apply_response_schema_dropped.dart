// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'snowflake_string_type.dart';
import 'persona_tag_schema.dart';
import 'signature_emoji_schema.dart';

part 'persona_import_apply_response_schema_dropped.g.dart';

@JsonSerializable()
class PersonaImportApplyResponseSchemaDropped {
  const PersonaImportApplyResponseSchemaDropped({
    required this.personaId,
    required this.tags,
    required this.signatureEmojis,
  });

  factory PersonaImportApplyResponseSchemaDropped.fromJson(
    Map<String, Object?> json,
  ) => _$PersonaImportApplyResponseSchemaDroppedFromJson(json);

  @JsonKey(name: 'persona_id', defaultValue: '')
  final SnowflakeStringType personaId;
  @JsonKey(defaultValue: <PersonaTagSchema>[])
  final List<PersonaTagSchema> tags;
  @JsonKey(name: 'signature_emojis', defaultValue: <SignatureEmojiSchema>[])
  final List<SignatureEmojiSchema> signatureEmojis;

  Map<String, Object?> toJson() =>
      _$PersonaImportApplyResponseSchemaDroppedToJson(this);
}
