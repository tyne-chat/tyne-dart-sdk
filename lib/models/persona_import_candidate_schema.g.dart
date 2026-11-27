// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_import_candidate_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaImportCandidateSchema _$PersonaImportCandidateSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PersonaImportCandidateSchema',
  json,
  ($checkedConvert) {
    final val = PersonaImportCandidateSchema(
      personaId: $checkedConvert(
        'persona_id',
        (v) => v as SnowflakeStringType? ?? '',
      ),
      matchedOn: $checkedConvert(
        'matched_on',
        (v) => v == null
            ? PersonaImportCandidateSchemaMatchedOnMatchedOn.$unknown
            : PersonaImportCandidateSchemaMatchedOnMatchedOn.fromJson(
                v as String,
              ),
      ),
      linkedElsewhere: $checkedConvert(
        'linked_elsewhere',
        (v) => v as bool? ?? false,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'personaId': 'persona_id',
    'matchedOn': 'matched_on',
    'linkedElsewhere': 'linked_elsewhere',
  },
);

Map<String, dynamic> _$PersonaImportCandidateSchemaToJson(
  PersonaImportCandidateSchema instance,
) => <String, dynamic>{
  'persona_id': instance.personaId,
  'matched_on': instance.matchedOn,
  'linked_elsewhere': instance.linkedElsewhere,
};
