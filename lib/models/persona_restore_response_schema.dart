// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'persona_response_schema.dart';
import 'persona_tag_schema.dart';
import 'signature_emoji_schema.dart';

part 'persona_restore_response_schema.g.dart';

@JsonSerializable()
class PersonaRestoreResponseSchema {
  const PersonaRestoreResponseSchema({
    required this.persona,
    required this.droppedTags,
    required this.droppedSignatureEmojis,
  });

  factory PersonaRestoreResponseSchema.fromJson(Map<String, Object?> json) =>
      _$PersonaRestoreResponseSchemaFromJson(json);

  @JsonKey(defaultValue: _$missingPersonaResponseSchema)
  final PersonaResponseSchema persona;

  /// Tags left off because another persona holds them now
  @JsonKey(name: 'dropped_tags', defaultValue: <PersonaTagSchema>[])
  final List<PersonaTagSchema> droppedTags;

  /// Signature emojis left off for the same reason
  @JsonKey(
    name: 'dropped_signature_emojis',
    defaultValue: <SignatureEmojiSchema>[],
  )
  final List<SignatureEmojiSchema> droppedSignatureEmojis;

  Map<String, Object?> toJson() => _$PersonaRestoreResponseSchemaToJson(this);
}

PersonaResponseSchema _$missingPersonaResponseSchema() =>
    PersonaResponseSchema.fromJson(const <String, dynamic>{});
