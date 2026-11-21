// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'json_nullable.dart';

import 'snowflake_string_type.dart';

part 'signature_emoji_schema_input.g.dart';

@JsonSerializable(constructor: '_')
class SignatureEmojiSchemaInput {
  SignatureEmojiSchemaInput({
    required this.name,
    JsonNullable<SnowflakeStringType> id =
        const JsonNullable<SnowflakeStringType>.undefined(),
    JsonNullable<bool> animated = const JsonNullable<bool>.undefined(),
  }) : id = id,
       idValue = id.value,
       _idPresent = id.isPresent,
       animated = animated,
       animatedValue = animated.value,
       _animatedPresent = animated.isPresent;

  const SignatureEmojiSchemaInput._({
    required this.name,
    this.idValue,
    this.animatedValue,
  }) : id = const JsonNullable<SnowflakeStringType>.undefined(),
       _idPresent = false,
       animated = const JsonNullable<bool>.undefined(),
       _animatedPresent = false;
  factory SignatureEmojiSchemaInput.patch(Map<String, Object?> json) =>
      SignatureEmojiSchemaInput.fromJson(json);

  factory SignatureEmojiSchemaInput.fromJson(Map<String, Object?> json) {
    final value = _$SignatureEmojiSchemaInputFromJson(json);
    return SignatureEmojiSchemaInput(
      name: value.name,
      id: json.containsKey('id')
          ? JsonNullable<SnowflakeStringType>.of(value.idValue)
          : const JsonNullable<SnowflakeStringType>.undefined(),
      animated: json.containsKey('animated')
          ? JsonNullable<bool>.of(value.animatedValue)
          : const JsonNullable<bool>.undefined(),
    );
  }

  /// Emoji name or Unicode character
  @JsonKey(defaultValue: '')
  final String name;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<SnowflakeStringType> id;
  @JsonKey(includeIfNull: false, name: 'id')
  final SnowflakeStringType? idValue;
  final bool _idPresent;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final JsonNullable<bool> animated;
  @JsonKey(includeIfNull: false, name: 'animated')
  final bool? animatedValue;
  final bool _animatedPresent;

  Map<String, Object?> toJson() {
    final json = _$SignatureEmojiSchemaInputToJson(this);
    if (_idPresent) {
      json.putIfAbsent('id', () => idValue);
    }
    if (_animatedPresent) {
      json.putIfAbsent('animated', () => animatedValue);
    }
    return json;
  }
}
