// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'json_nullable.dart';

import 'snowflake_string_type.dart';

part 'channel_signal_toggle_request_schema.g.dart';

@JsonSerializable(constructor: '_')
class ChannelSignalToggleRequestSchema {
  ChannelSignalToggleRequestSchema({
    JsonNullable<SnowflakeStringType> personaId =
        const JsonNullable<SnowflakeStringType>.undefined(),
  }) : personaId = personaId,
       personaIdValue = personaId.value,
       _personaIdPresent = personaId.isPresent;

  const ChannelSignalToggleRequestSchema._({this.personaIdValue})
    : personaId = const JsonNullable<SnowflakeStringType>.undefined(),
      _personaIdPresent = false;
  factory ChannelSignalToggleRequestSchema.patch(Map<String, Object?> json) =>
      ChannelSignalToggleRequestSchema.fromJson(json);

  factory ChannelSignalToggleRequestSchema.fromJson(Map<String, Object?> json) {
    final value = _$ChannelSignalToggleRequestSchemaFromJson(json);
    return ChannelSignalToggleRequestSchema(
      personaId: json.containsKey('persona_id')
          ? JsonNullable<SnowflakeStringType>.of(value.personaIdValue)
          : const JsonNullable<SnowflakeStringType>.undefined(),
    );
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<SnowflakeStringType> personaId;
  @JsonKey(includeIfNull: false, name: 'persona_id')
  final SnowflakeStringType? personaIdValue;
  final bool _personaIdPresent;

  Map<String, Object?> toJson() {
    final json = _$ChannelSignalToggleRequestSchemaToJson(this);
    if (_personaIdPresent) {
      json.putIfAbsent('persona_id', () => personaIdValue);
    }
    return json;
  }
}
