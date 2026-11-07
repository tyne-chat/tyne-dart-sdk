// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_lookup_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaLookupRequestSchema _$PersonaLookupRequestSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaLookupRequestSchema', json, ($checkedConvert) {
  final val = PersonaLookupRequestSchema(
    personas: $checkedConvert(
      'personas',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => PersonaLookupRequestSchemaPersonas.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          [],
    ),
  );
  return val;
});

Map<String, dynamic> _$PersonaLookupRequestSchemaToJson(
  PersonaLookupRequestSchema instance,
) => <String, dynamic>{'personas': instance.personas};
