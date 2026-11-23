// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'snowflake_string_type.dart';

part 'user_signals_persona_response_schema.g.dart';

@JsonSerializable()
class UserSignalsPersonaResponseSchema {
  const UserSignalsPersonaResponseSchema({required this.changedChannelIds});

  factory UserSignalsPersonaResponseSchema.fromJson(
    Map<String, Object?> json,
  ) => _$UserSignalsPersonaResponseSchemaFromJson(json);

  /// The chats where a signal was moved to the persona, in the order they were asked for
  @JsonKey(name: 'changed_channel_ids', defaultValue: <String>[])
  final List<SnowflakeStringType> changedChannelIds;

  Map<String, Object?> toJson() =>
      _$UserSignalsPersonaResponseSchemaToJson(this);
}
