// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'snowflake_string_type.dart';

part 'signature_emoji_schema.g.dart';

@JsonSerializable()
class SignatureEmojiSchema {
  const SignatureEmojiSchema({required this.name, this.id, this.animated});

  factory SignatureEmojiSchema.fromJson(Map<String, Object?> json) =>
      _$SignatureEmojiSchemaFromJson(json);

  /// Custom emoji ID (null for Unicode)
  @JsonKey(includeIfNull: false)
  final SnowflakeStringType? id;

  /// Emoji name or Unicode character
  @JsonKey(defaultValue: '')
  final String name;

  /// Whether the emoji is animated
  @JsonKey(includeIfNull: false)
  final bool? animated;

  Map<String, Object?> toJson() => _$SignatureEmojiSchemaToJson(this);
}
