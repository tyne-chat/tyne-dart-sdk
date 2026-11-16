// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_import_clash_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaImportClashSchema _$PersonaImportClashSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PersonaImportClashSchema',
  json,
  ($checkedConvert) {
    final val = PersonaImportClashSchema(
      tag: $checkedConvert(
        'tag',
        (v) => v == null
            ? null
            : PersonaTagSchema.fromJson(v as Map<String, dynamic>),
      ),
      emoji: $checkedConvert(
        'emoji',
        (v) => v == null
            ? null
            : SignatureEmojiSchema.fromJson(v as Map<String, dynamic>),
      ),
      heldByPersonaId: $checkedConvert(
        'held_by_persona_id',
        (v) => v as SnowflakeStringType?,
      ),
      sharedWithMember: $checkedConvert(
        'shared_with_member',
        (v) => (v as num?)?.toInt(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'heldByPersonaId': 'held_by_persona_id',
    'sharedWithMember': 'shared_with_member',
  },
);

Map<String, dynamic> _$PersonaImportClashSchemaToJson(
  PersonaImportClashSchema instance,
) => <String, dynamic>{
  'tag': ?instance.tag,
  'emoji': ?instance.emoji,
  'held_by_persona_id': ?instance.heldByPersonaId,
  'shared_with_member': ?instance.sharedWithMember,
};
