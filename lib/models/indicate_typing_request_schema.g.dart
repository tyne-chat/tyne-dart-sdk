// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indicate_typing_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IndicateTypingRequestSchema _$IndicateTypingRequestSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'IndicateTypingRequestSchema',
  json,
  ($checkedConvert) {
    final val = IndicateTypingRequestSchema._(
      personaIdValue: $checkedConvert('persona_id', (v) => v as SnowflakeType?),
      subprofileValue: $checkedConvert(
        'subprofile',
        (v) => v == null
            ? null
            : LegacyMessageSubprofileRequestSchema.fromJson(
                v as Map<String, dynamic>,
              ),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'personaIdValue': 'persona_id',
    'subprofileValue': 'subprofile',
  },
);

Map<String, dynamic> _$IndicateTypingRequestSchemaToJson(
  IndicateTypingRequestSchema instance,
) => <String, dynamic>{
  'persona_id': ?instance.personaIdValue,
  'subprofile': ?instance.subprofileValue,
};
