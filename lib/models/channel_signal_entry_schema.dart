// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'message_subprofile_response_schema.dart';
import 'snowflake_string_type.dart';
import 'user_partial_response.dart';

part 'channel_signal_entry_schema.g.dart';

@JsonSerializable()
class ChannelSignalEntrySchema {
  const ChannelSignalEntrySchema({
    required this.signalId,
    required this.user,
    required this.personaId,
    required this.subprofile,
    required this.activatedAt,
  });

  factory ChannelSignalEntrySchema.fromJson(Map<String, Object?> json) =>
      _$ChannelSignalEntrySchemaFromJson(json);

  /// The unique identifier of the signal within the bar
  @JsonKey(name: 'signal_id', defaultValue: '')
  final String signalId;
  @JsonKey(defaultValue: _$missingUserPartialResponse)
  final UserPartialResponse user;

  /// The persona the account is currently signalling as, if any
  @JsonKey(includeIfNull: true, name: 'persona_id')
  final SnowflakeStringType? personaId;
  @JsonKey(includeIfNull: true)
  final MessageSubprofileResponseSchema? subprofile;

  /// Unix timestamp in milliseconds
  @JsonKey(name: 'activated_at', defaultValue: 0)
  final int activatedAt;

  Map<String, Object?> toJson() => _$ChannelSignalEntrySchemaToJson(this);
}

UserPartialResponse _$missingUserPartialResponse() =>
    UserPartialResponse.fromJson(const <String, dynamic>{});
