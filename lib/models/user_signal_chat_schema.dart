// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'snowflake_string_type.dart';
import 'user_signal_ref_schema.dart';

part 'user_signal_chat_schema.g.dart';

@JsonSerializable()
class UserSignalChatSchema {
  const UserSignalChatSchema({
    required this.channelId,
    required this.signals,
    required this.updatedAt,
  });

  factory UserSignalChatSchema.fromJson(Map<String, Object?> json) =>
      _$UserSignalChatSchemaFromJson(json);

  @JsonKey(name: 'channel_id', defaultValue: '')
  final SnowflakeStringType channelId;

  /// The user's lit signals in this chat, oldest first
  @JsonKey(defaultValue: <UserSignalRefSchema>[])
  final List<UserSignalRefSchema> signals;

  /// When the newest of these signals was lit, in Unix milliseconds
  @JsonKey(name: 'updated_at', defaultValue: 0)
  final int updatedAt;

  Map<String, Object?> toJson() => _$UserSignalChatSchemaToJson(this);
}
