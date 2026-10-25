// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legacy_message_subprofile_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LegacyMessageSubprofileRequestSchema
_$LegacyMessageSubprofileRequestSchemaFromJson(Map<String, dynamic> json) =>
    $checkedCreate('LegacyMessageSubprofileRequestSchema', json, (
      $checkedConvert,
    ) {
      final val = LegacyMessageSubprofileRequestSchema(
        id: $checkedConvert('id', (v) => v as String? ?? ''),
      );
      return val;
    });

Map<String, dynamic> _$LegacyMessageSubprofileRequestSchemaToJson(
  LegacyMessageSubprofileRequestSchema instance,
) => <String, dynamic>{'id': instance.id};
