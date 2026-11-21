// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signal_bar_update_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignalBarUpdateRequestSchema _$SignalBarUpdateRequestSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SignalBarUpdateRequestSchema', json, ($checkedConvert) {
  final val = SignalBarUpdateRequestSchema(
    signals: $checkedConvert(
      'signals',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => SignalBarUpdateRequestSchemaSignals.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          [],
    ),
  );
  return val;
});

Map<String, dynamic> _$SignalBarUpdateRequestSchemaToJson(
  SignalBarUpdateRequestSchema instance,
) => <String, dynamic>{'signals': instance.signals};
