// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_import_preview_response_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaImportPreviewResponseSchema _$PersonaImportPreviewResponseSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PersonaImportPreviewResponseSchema',
  json,
  ($checkedConvert) {
    final val = PersonaImportPreviewResponseSchema(
      entries: $checkedConvert(
        'entries',
        (v) =>
            (v as List<dynamic>?)
                ?.map(
                  (e) => PersonaImportPreviewEntrySchema.fromJson(
                    e as Map<String, dynamic>,
                  ),
                )
                .toList() ??
            [],
      ),
      personas: $checkedConvert(
        'personas',
        (v) =>
            (v as List<dynamic>?)
                ?.map(
                  (e) =>
                      PersonaResponseSchema.fromJson(e as Map<String, dynamic>),
                )
                .toList() ??
            [],
      ),
      displayTag: $checkedConvert(
        'display_tag',
        (v) => v == null
            ? _$missingPersonaImportPreviewResponseSchemaDisplayTag()
            : PersonaImportPreviewResponseSchemaDisplayTag.fromJson(
                v as Map<String, dynamic>,
              ),
      ),
      untouched: $checkedConvert('untouched', (v) => (v as num?)?.toInt() ?? 0),
      needsReview: $checkedConvert('needs_review', (v) => v as bool? ?? false),
      livePersonaIds: $checkedConvert(
        'live_persona_ids',
        (v) => (v as List<dynamic>?)
            ?.map((e) => e as SnowflakeStringType)
            .toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'displayTag': 'display_tag',
    'needsReview': 'needs_review',
    'livePersonaIds': 'live_persona_ids',
  },
);

Map<String, dynamic> _$PersonaImportPreviewResponseSchemaToJson(
  PersonaImportPreviewResponseSchema instance,
) => <String, dynamic>{
  'entries': instance.entries,
  'personas': instance.personas,
  'display_tag': instance.displayTag,
  'untouched': instance.untouched,
  'live_persona_ids': ?instance.livePersonaIds,
  'needs_review': instance.needsReview,
};
