// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'snowflake_string_type.dart';

part 'user_signal_ref_schema.g.dart';

@JsonSerializable()
class UserSignalRefSchema {
  const UserSignalRefSchema({required this.signalId, required this.personaId});

  factory UserSignalRefSchema.fromJson(Map<String, Object?> json) =>
      _$UserSignalRefSchemaFromJson(json);

  /// The unique identifier of the signal within the bar
  @JsonKey(name: 'signal_id', defaultValue: '')
  final String signalId;

  /// The persona the signal is shown as, or null for the account
  @JsonKey(includeIfNull: true, name: 'persona_id')
  final SnowflakeStringType? personaId;

  Map<String, Object?> toJson() => _$UserSignalRefSchemaToJson(this);
}
