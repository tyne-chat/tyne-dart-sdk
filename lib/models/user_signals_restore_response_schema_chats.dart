// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'snowflake_string_type.dart';
import 'user_signal_ref_schema.dart';

part 'user_signals_restore_response_schema_chats.g.dart';

@JsonSerializable()
class UserSignalsRestoreResponseSchemaChats {
  const UserSignalsRestoreResponseSchemaChats({
    required this.channelId,
    required this.available,
    required this.now,
    required this.after,
  });

  factory UserSignalsRestoreResponseSchemaChats.fromJson(
    Map<String, Object?> json,
  ) => _$UserSignalsRestoreResponseSchemaChatsFromJson(json);

  @JsonKey(name: 'channel_id', defaultValue: '')
  final SnowflakeStringType channelId;

  /// False when the user can no longer light signals in this chat; Restore leaves it out
  @JsonKey(defaultValue: false)
  final bool available;

  /// The user's signals there now
  @JsonKey(defaultValue: <UserSignalRefSchema>[])
  final List<UserSignalRefSchema> now;

  /// The signals Restore puts back
  @JsonKey(defaultValue: <UserSignalRefSchema>[])
  final List<UserSignalRefSchema> after;

  Map<String, Object?> toJson() =>
      _$UserSignalsRestoreResponseSchemaChatsToJson(this);
}
