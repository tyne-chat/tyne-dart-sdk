// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'user_signals_restore_action_schema.dart';
import 'user_signals_restore_response_schema_chats.dart';

part 'user_signals_restore_response_schema.g.dart';

@JsonSerializable()
class UserSignalsRestoreResponseSchema {
  const UserSignalsRestoreResponseSchema({
    required this.available,
    required this.createdAt,
    required this.action,
    required this.chats,
  });

  factory UserSignalsRestoreResponseSchema.fromJson(
    Map<String, Object?> json,
  ) => _$UserSignalsRestoreResponseSchemaFromJson(json);

  /// Whether there is anything to restore
  @JsonKey(defaultValue: false)
  final bool available;

  /// When the change Restore undoes was made, in Unix milliseconds
  @JsonKey(includeIfNull: true, name: 'created_at')
  final int? createdAt;
  @JsonKey(includeIfNull: true)
  final UserSignalsRestoreActionSchema? action;
  @JsonKey(defaultValue: <UserSignalsRestoreResponseSchemaChats>[])
  final List<UserSignalsRestoreResponseSchemaChats> chats;

  Map<String, Object?> toJson() =>
      _$UserSignalsRestoreResponseSchemaToJson(this);
}
