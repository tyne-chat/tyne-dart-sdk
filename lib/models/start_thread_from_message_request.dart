// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'json_nullable.dart';

import 'int32_type.dart';
import 'snowflake_type.dart';
import 'thread_auto_archive_duration_schema.dart';

part 'start_thread_from_message_request.g.dart';

@JsonSerializable(constructor: '_')
class StartThreadFromMessageRequest {
  StartThreadFromMessageRequest({
    required this.name,
    this.autoArchiveDuration,
    this.rateLimitPerUser,
    JsonNullable<SnowflakeType> personaId =
        const JsonNullable<SnowflakeType>.undefined(),
  }) : personaId = personaId,
       personaIdValue = personaId.value,
       _personaIdPresent = personaId.isPresent;

  const StartThreadFromMessageRequest._({
    required this.name,
    this.autoArchiveDuration,
    this.rateLimitPerUser,
    this.personaIdValue,
  }) : personaId = const JsonNullable<SnowflakeType>.undefined(),
       _personaIdPresent = false;
  factory StartThreadFromMessageRequest.patch(Map<String, Object?> json) =>
      StartThreadFromMessageRequest.fromJson(json);

  factory StartThreadFromMessageRequest.fromJson(Map<String, Object?> json) {
    final value = _$StartThreadFromMessageRequestFromJson(json);
    return StartThreadFromMessageRequest(
      name: value.name,
      autoArchiveDuration: value.autoArchiveDuration,
      rateLimitPerUser: value.rateLimitPerUser,
      personaId: json.containsKey('persona_id')
          ? JsonNullable<SnowflakeType>.of(value.personaIdValue)
          : const JsonNullable<SnowflakeType>.undefined(),
    );
  }

  /// The name of the thread (1-100 characters)
  @JsonKey(defaultValue: '')
  final String name;
  @JsonKey(includeIfNull: false, name: 'auto_archive_duration')
  final ThreadAutoArchiveDurationSchema? autoArchiveDuration;

  /// Seconds a user has to wait before sending another message (0-21600)
  @JsonKey(includeIfNull: false, name: 'rate_limit_per_user')
  final Int32Type? rateLimitPerUser;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<SnowflakeType> personaId;
  @JsonKey(includeIfNull: false, name: 'persona_id')
  final SnowflakeType? personaIdValue;
  final bool _personaIdPresent;

  Map<String, Object?> toJson() {
    final json = _$StartThreadFromMessageRequestToJson(this);
    if (_personaIdPresent) {
      json.putIfAbsent('persona_id', () => personaIdValue);
    }
    return json;
  }
}
