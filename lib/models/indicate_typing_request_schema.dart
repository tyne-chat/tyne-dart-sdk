// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'json_nullable.dart';

import 'legacy_message_subprofile_request_schema.dart';
import 'snowflake_type.dart';

part 'indicate_typing_request_schema.g.dart';

@JsonSerializable(constructor: '_')
class IndicateTypingRequestSchema {
  IndicateTypingRequestSchema({
    JsonNullable<SnowflakeType> personaId =
        const JsonNullable<SnowflakeType>.undefined(),
    JsonNullable<LegacyMessageSubprofileRequestSchema> subprofile =
        const JsonNullable<LegacyMessageSubprofileRequestSchema>.undefined(),
  }) : personaId = personaId,
       personaIdValue = personaId.value,
       _personaIdPresent = personaId.isPresent,
       subprofile = subprofile,
       subprofileValue = subprofile.value,
       _subprofilePresent = subprofile.isPresent;

  const IndicateTypingRequestSchema._({
    this.personaIdValue,
    this.subprofileValue,
  }) : personaId = const JsonNullable<SnowflakeType>.undefined(),
       _personaIdPresent = false,
       subprofile =
           const JsonNullable<LegacyMessageSubprofileRequestSchema>.undefined(),
       _subprofilePresent = false;
  factory IndicateTypingRequestSchema.patch(Map<String, Object?> json) =>
      IndicateTypingRequestSchema.fromJson(json);

  factory IndicateTypingRequestSchema.fromJson(Map<String, Object?> json) {
    final value = _$IndicateTypingRequestSchemaFromJson(json);
    return IndicateTypingRequestSchema(
      personaId: json.containsKey('persona_id')
          ? JsonNullable<SnowflakeType>.of(value.personaIdValue)
          : const JsonNullable<SnowflakeType>.undefined(),
      subprofile: json.containsKey('subprofile')
          ? JsonNullable<LegacyMessageSubprofileRequestSchema>.of(
              value.subprofileValue,
            )
          : const JsonNullable<
              LegacyMessageSubprofileRequestSchema
            >.undefined(),
    );
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<SnowflakeType> personaId;
  @JsonKey(includeIfNull: false, name: 'persona_id')
  final SnowflakeType? personaIdValue;
  final bool _personaIdPresent;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<LegacyMessageSubprofileRequestSchema> subprofile;
  @JsonKey(includeIfNull: false, name: 'subprofile')
  final LegacyMessageSubprofileRequestSchema? subprofileValue;
  final bool _subprofilePresent;

  Map<String, Object?> toJson() {
    final json = _$IndicateTypingRequestSchemaToJson(this);
    if (_personaIdPresent) {
      json.putIfAbsent('persona_id', () => personaIdValue);
    }
    if (_subprofilePresent) {
      json.putIfAbsent('subprofile', () => subprofileValue);
    }
    return json;
  }
}
