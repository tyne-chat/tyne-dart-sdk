// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_lookup_item_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaLookupItemSchema _$PersonaLookupItemSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PersonaLookupItemSchema',
  json,
  ($checkedConvert) {
    final val = PersonaLookupItemSchema(
      id: $checkedConvert('id', (v) => v as String? ?? ''),
      name: $checkedConvert('name', (v) => v as String? ?? ''),
      userId: $checkedConvert('user_id', (v) => v as String? ?? ''),
      avatar: $checkedConvert('avatar', (v) => v as PersonaAssetHashType?),
      avatarColor: $checkedConvert('avatar_color', (v) => (v as num?)?.toInt()),
      displayTagText: $checkedConvert('display_tag_text', (v) => v as String?),
      displayTagIcon: $checkedConvert(
        'display_tag_icon',
        (v) => v as PersonaAssetHashType?,
      ),
      color: $checkedConvert('color', (v) => (v as num?)?.toInt()),
      visibility: $checkedConvert(
        'visibility',
        (v) => v == null ? null : PersonaVisibilitySchema.fromJson(v as String),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'userId': 'user_id',
    'avatarColor': 'avatar_color',
    'displayTagText': 'display_tag_text',
    'displayTagIcon': 'display_tag_icon',
  },
);

Map<String, dynamic> _$PersonaLookupItemSchemaToJson(
  PersonaLookupItemSchema instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'avatar': ?instance.avatar,
  'avatar_color': ?instance.avatarColor,
  'display_tag_text': ?instance.displayTagText,
  'display_tag_icon': ?instance.displayTagIcon,
  'color': ?instance.color,
  'visibility': ?instance.visibility,
  'user_id': instance.userId,
};
