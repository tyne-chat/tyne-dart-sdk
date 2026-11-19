// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_persona_list_response_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicPersonaListResponseSchema _$PublicPersonaListResponseSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PublicPersonaListResponseSchema',
  json,
  ($checkedConvert) {
    final val = PublicPersonaListResponseSchema(
      personas: $checkedConvert(
        'personas',
        (v) =>
            (v as List<dynamic>?)
                ?.map(
                  (e) => PublicPersonaResponseSchema.fromJson(
                    e as Map<String, dynamic>,
                  ),
                )
                .toList() ??
            [],
      ),
      displayTagText: $checkedConvert('display_tag_text', (v) => v as String?),
      displayTagIcon: $checkedConvert(
        'display_tag_icon',
        (v) => v as PersonaAssetHashType?,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'displayTagText': 'display_tag_text',
    'displayTagIcon': 'display_tag_icon',
  },
);

Map<String, dynamic> _$PublicPersonaListResponseSchemaToJson(
  PublicPersonaListResponseSchema instance,
) => <String, dynamic>{
  'display_tag_text': ?instance.displayTagText,
  'display_tag_icon': ?instance.displayTagIcon,
  'personas': instance.personas,
};
