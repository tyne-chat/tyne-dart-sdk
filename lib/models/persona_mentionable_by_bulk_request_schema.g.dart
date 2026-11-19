// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_mentionable_by_bulk_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaMentionableByBulkRequestSchema
_$PersonaMentionableByBulkRequestSchemaFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PersonaMentionableByBulkRequestSchema', json, (
      $checkedConvert,
    ) {
      final val = PersonaMentionableByBulkRequestSchema(
        personas: $checkedConvert(
          'personas',
          (v) =>
              (v as List<dynamic>?)
                  ?.map(
                    (e) =>
                        PersonaMentionableByBulkRequestSchemaPersonas.fromJson(
                          e as Map<String, dynamic>,
                        ),
                  )
                  .toList() ??
              [],
        ),
      );
      return val;
    });

Map<String, dynamic> _$PersonaMentionableByBulkRequestSchemaToJson(
  PersonaMentionableByBulkRequestSchema instance,
) => <String, dynamic>{'personas': instance.personas};
