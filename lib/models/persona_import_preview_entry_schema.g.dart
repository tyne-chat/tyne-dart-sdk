// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_import_preview_entry_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaImportPreviewEntrySchema _$PersonaImportPreviewEntrySchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PersonaImportPreviewEntrySchema',
  json,
  ($checkedConvert) {
    final val = PersonaImportPreviewEntrySchema(
      indexField: $checkedConvert('index', (v) => (v as num?)?.toInt() ?? 0),
      kind: $checkedConvert(
        'kind',
        (v) => v == null
            ? PersonaImportKindSchema.$unknown
            : PersonaImportKindSchema.fromJson(v as String),
      ),
      personaId: $checkedConvert(
        'persona_id',
        (v) => v as SnowflakeStringType?,
      ),
      candidates: $checkedConvert(
        'candidates',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) => PersonaImportCandidateSchema.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
      differences: $checkedConvert(
        'differences',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) => PersonaImportDifferenceSchema.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
      clashes: $checkedConvert(
        'clashes',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) =>
                  PersonaImportClashSchema.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
      avatarHash: $checkedConvert(
        'avatar_hash',
        (v) => v as PersonaAssetHashType?,
      ),
      bannerHash: $checkedConvert(
        'banner_hash',
        (v) => v as PersonaAssetHashType?,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'indexField': 'index',
    'personaId': 'persona_id',
    'avatarHash': 'avatar_hash',
    'bannerHash': 'banner_hash',
  },
);

Map<String, dynamic> _$PersonaImportPreviewEntrySchemaToJson(
  PersonaImportPreviewEntrySchema instance,
) => <String, dynamic>{
  'index': instance.indexField,
  'kind': instance.kind,
  'persona_id': ?instance.personaId,
  'candidates': ?instance.candidates,
  'differences': ?instance.differences,
  'clashes': ?instance.clashes,
  'avatar_hash': ?instance.avatarHash,
  'banner_hash': ?instance.bannerHash,
};
