// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'user_signal_chat_schema.dart';

part 'user_signals_response_schema.g.dart';

@JsonSerializable()
class UserSignalsResponseSchema {
  const UserSignalsResponseSchema({
    required this.chats,
    required this.restoreAvailable,
  });

  factory UserSignalsResponseSchema.fromJson(Map<String, Object?> json) =>
      _$UserSignalsResponseSchemaFromJson(json);

  /// Every chat where the user has a signal on, newest first
  @JsonKey(defaultValue: <UserSignalChatSchema>[])
  final List<UserSignalChatSchema> chats;

  /// Whether the last change everywhere can be restored
  @JsonKey(name: 'restore_available', defaultValue: false)
  final bool restoreAvailable;

  Map<String, Object?> toJson() => _$UserSignalsResponseSchemaToJson(this);
}
