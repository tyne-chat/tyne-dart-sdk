// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_import_apply_response_schema_dropped.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaImportApplyResponseSchemaDropped
_$PersonaImportApplyResponseSchemaDroppedFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PersonaImportApplyResponseSchemaDropped',
      json,
      ($checkedConvert) {
        final val = PersonaImportApplyResponseSchemaDropped(
          personaId: $checkedConvert(
            'persona_id',
            (v) => v as SnowflakeStringType? ?? '',
          ),
          tags: $checkedConvert(
            'tags',
            (v) =>
                (v as List<dynamic>?)
                    ?.map(
                      (e) =>
                          PersonaTagSchema.fromJson(e as Map<String, dynamic>),
                    )
                    .toList() ??
                [],
          ),
          signatureEmojis: $checkedConvert(
            'signature_emojis',
            (v) =>
                (v as List<dynamic>?)
                    ?.map(
                      (e) => SignatureEmojiSchema.fromJson(
                        e as Map<String, dynamic>,
                      ),
                    )
                    .toList() ??
                [],
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'personaId': 'persona_id',
        'signatureEmojis': 'signature_emojis',
      },
    );

Map<String, dynamic> _$PersonaImportApplyResponseSchemaDroppedToJson(
  PersonaImportApplyResponseSchemaDropped instance,
) => <String, dynamic>{
  'persona_id': instance.personaId,
  'tags': instance.tags,
  'signature_emojis': instance.signatureEmojis,
};
