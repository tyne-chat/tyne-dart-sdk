// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_restore_response_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaRestoreResponseSchema _$PersonaRestoreResponseSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PersonaRestoreResponseSchema',
  json,
  ($checkedConvert) {
    final val = PersonaRestoreResponseSchema(
      persona: $checkedConvert(
        'persona',
        (v) => v == null
            ? _$missingPersonaResponseSchema()
            : PersonaResponseSchema.fromJson(v as Map<String, dynamic>),
      ),
      droppedTags: $checkedConvert(
        'dropped_tags',
        (v) =>
            (v as List<dynamic>?)
                ?.map(
                  (e) => PersonaTagSchema.fromJson(e as Map<String, dynamic>),
                )
                .toList() ??
            [],
      ),
      droppedSignatureEmojis: $checkedConvert(
        'dropped_signature_emojis',
        (v) =>
            (v as List<dynamic>?)
                ?.map(
                  (e) =>
                      SignatureEmojiSchema.fromJson(e as Map<String, dynamic>),
                )
                .toList() ??
            [],
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'droppedTags': 'dropped_tags',
    'droppedSignatureEmojis': 'dropped_signature_emojis',
  },
);

Map<String, dynamic> _$PersonaRestoreResponseSchemaToJson(
  PersonaRestoreResponseSchema instance,
) => <String, dynamic>{
  'persona': instance.persona,
  'dropped_tags': instance.droppedTags,
  'dropped_signature_emojis': instance.droppedSignatureEmojis,
};
