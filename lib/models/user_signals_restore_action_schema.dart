// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'user_signals_restore_action_schema_kind_kind.dart';

part 'user_signals_restore_action_schema.g.dart';

@JsonSerializable()
class UserSignalsRestoreActionSchema {
  const UserSignalsRestoreActionSchema({
    required this.kind,
    required this.signalId,
  });

  factory UserSignalsRestoreActionSchema.fromJson(Map<String, Object?> json) =>
      _$UserSignalsRestoreActionSchemaFromJson(json);

  /// What the last change everywhere was: a signal set everywhere, every signal off, or a restore
  @JsonKey(defaultValue: UserSignalsRestoreActionSchemaKindKind.$unknown)
  final UserSignalsRestoreActionSchemaKindKind kind;

  /// The unique identifier of the signal within the bar
  @JsonKey(includeIfNull: true, name: 'signal_id')
  final String? signalId;

  Map<String, Object?> toJson() => _$UserSignalsRestoreActionSchemaToJson(this);
}
