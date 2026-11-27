// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'snowflake_string_type.dart';

part 'user_signals_persona_request_schema.g.dart';

@JsonSerializable()
class UserSignalsPersonaRequestSchema {
  const UserSignalsPersonaRequestSchema({
    required this.personaId,
    required this.channelIds,
  });

  factory UserSignalsPersonaRequestSchema.fromJson(Map<String, Object?> json) =>
      _$UserSignalsPersonaRequestSchemaFromJson(json);

  /// The persona the signals are shown as from now on; null or "0" for the account itself
  @JsonKey(includeIfNull: true, name: 'persona_id')
  final SnowflakeStringType? personaId;

  /// The chats where the user's signals move to the persona, each listed once
  @JsonKey(name: 'channel_ids', defaultValue: <String>[])
  final List<SnowflakeStringType> channelIds;

  Map<String, Object?> toJson() =>
      _$UserSignalsPersonaRequestSchemaToJson(this);
}
