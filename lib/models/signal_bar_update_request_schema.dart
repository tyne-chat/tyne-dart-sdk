// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'signal_bar_update_request_schema_signals.dart';

part 'signal_bar_update_request_schema.g.dart';

@JsonSerializable()
class SignalBarUpdateRequestSchema {
  const SignalBarUpdateRequestSchema({required this.signals});

  factory SignalBarUpdateRequestSchema.fromJson(Map<String, Object?> json) =>
      _$SignalBarUpdateRequestSchemaFromJson(json);

  @JsonKey(defaultValue: <SignalBarUpdateRequestSchemaSignals>[])
  final List<SignalBarUpdateRequestSchemaSignals> signals;

  Map<String, Object?> toJson() => _$SignalBarUpdateRequestSchemaToJson(this);
}
