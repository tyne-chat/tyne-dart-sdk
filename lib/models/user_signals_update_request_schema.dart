// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'json_nullable.dart';

import 'snowflake_string_type.dart';

part 'user_signals_update_request_schema.g.dart';

@JsonSerializable(constructor: '_')
class UserSignalsUpdateRequestSchema {
  UserSignalsUpdateRequestSchema({
    required this.signalId,
    JsonNullable<SnowflakeStringType> channelId =
        const JsonNullable<SnowflakeStringType>.undefined(),
    JsonNullable<SnowflakeStringType> personaId =
        const JsonNullable<SnowflakeStringType>.undefined(),
  }) : channelId = channelId,
       channelIdValue = channelId.value,
       _channelIdPresent = channelId.isPresent,
       personaId = personaId,
       personaIdValue = personaId.value,
       _personaIdPresent = personaId.isPresent;

  const UserSignalsUpdateRequestSchema._({
    required this.signalId,
    this.channelIdValue,
    this.personaIdValue,
  }) : channelId = const JsonNullable<SnowflakeStringType>.undefined(),
       _channelIdPresent = false,
       personaId = const JsonNullable<SnowflakeStringType>.undefined(),
       _personaIdPresent = false;
  factory UserSignalsUpdateRequestSchema.patch(Map<String, Object?> json) =>
      UserSignalsUpdateRequestSchema.fromJson(json);

  factory UserSignalsUpdateRequestSchema.fromJson(Map<String, Object?> json) {
    final value = _$UserSignalsUpdateRequestSchemaFromJson(json);
    return UserSignalsUpdateRequestSchema(
      signalId: value.signalId,
      channelId: json.containsKey('channel_id')
          ? JsonNullable<SnowflakeStringType>.of(value.channelIdValue)
          : const JsonNullable<SnowflakeStringType>.undefined(),
      personaId: json.containsKey('persona_id')
          ? JsonNullable<SnowflakeStringType>.of(value.personaIdValue)
          : const JsonNullable<SnowflakeStringType>.undefined(),
    );
  }

  /// The unique identifier of the signal within the bar
  @JsonKey(includeIfNull: true, name: 'signal_id')
  final String? signalId;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<SnowflakeStringType> channelId;
  @JsonKey(includeIfNull: false, name: 'channel_id')
  final SnowflakeStringType? channelIdValue;
  final bool _channelIdPresent;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<SnowflakeStringType> personaId;
  @JsonKey(includeIfNull: false, name: 'persona_id')
  final SnowflakeStringType? personaIdValue;
  final bool _personaIdPresent;

  Map<String, Object?> toJson() {
    final json = _$UserSignalsUpdateRequestSchemaToJson(this);
    if (_channelIdPresent) {
      json.putIfAbsent('channel_id', () => channelIdValue);
    }
    if (_personaIdPresent) {
      json.putIfAbsent('persona_id', () => personaIdValue);
    }
    return json;
  }
}
