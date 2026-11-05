// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'legacy_message_subprofile_request_schema.g.dart';

@JsonSerializable()
class LegacyMessageSubprofileRequestSchema {
  const LegacyMessageSubprofileRequestSchema({required this.id});

  factory LegacyMessageSubprofileRequestSchema.fromJson(
    Map<String, Object?> json,
  ) => _$LegacyMessageSubprofileRequestSchemaFromJson(json);

  @JsonKey(defaultValue: '')
  final String id;

  Map<String, Object?> toJson() =>
      _$LegacyMessageSubprofileRequestSchemaToJson(this);
}
