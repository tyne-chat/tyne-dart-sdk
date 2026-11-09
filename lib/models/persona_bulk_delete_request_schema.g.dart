// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_bulk_delete_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaBulkDeleteRequestSchema _$PersonaBulkDeleteRequestSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaBulkDeleteRequestSchema', json, ($checkedConvert) {
  final val = PersonaBulkDeleteRequestSchema(
    personaIds: $checkedConvert(
      'persona_ids',
      (v) =>
          (v as List<dynamic>?)
              ?.map((e) => e as SnowflakeStringType)
              .toList() ??
          [],
    ),
  );
  return val;
}, fieldKeyMap: const {'personaIds': 'persona_ids'});

Map<String, dynamic> _$PersonaBulkDeleteRequestSchemaToJson(
  PersonaBulkDeleteRequestSchema instance,
) => <String, dynamic>{'persona_ids': instance.personaIds};
