// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_mentionable_by_bulk_request_schema_personas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaMentionableByBulkRequestSchemaPersonas
_$PersonaMentionableByBulkRequestSchemaPersonasFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaMentionableByBulkRequestSchemaPersonas', json, (
  $checkedConvert,
) {
  final val = PersonaMentionableByBulkRequestSchemaPersonas(
    id: $checkedConvert('id', (v) => v as SnowflakeStringType? ?? ''),
    mentionableBy: $checkedConvert(
      'mentionable_by',
      (v) =>
          v == null ? null : PersonaMentionableBySchema.fromJson(v as String),
    ),
  );
  return val;
}, fieldKeyMap: const {'mentionableBy': 'mentionable_by'});

Map<String, dynamic> _$PersonaMentionableByBulkRequestSchemaPersonasToJson(
  PersonaMentionableByBulkRequestSchemaPersonas instance,
) => <String, dynamic>{
  'id': instance.id,
  'mentionable_by': instance.mentionableBy,
};
