// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'int32_type.dart';
import 'snowflake_string_type.dart';

part 'message_reaction_persona_entry.g.dart';

@JsonSerializable()
class MessageReactionPersonaEntry {
  const MessageReactionPersonaEntry({
    required this.personaId,
    required this.count,
    this.me,
  });

  factory MessageReactionPersonaEntry.fromJson(Map<String, Object?> json) =>
      _$MessageReactionPersonaEntryFromJson(json);

  /// The persona ID that reacted
  @JsonKey(name: 'persona_id', defaultValue: '')
  final SnowflakeStringType personaId;

  /// Count of reactions by this persona
  @JsonKey(defaultValue: 0)
  final Int32Type count;

  /// Whether the current user reacted as this persona
  @JsonKey(includeIfNull: false)
  final bool? me;

  Map<String, Object?> toJson() => _$MessageReactionPersonaEntryToJson(this);
}
