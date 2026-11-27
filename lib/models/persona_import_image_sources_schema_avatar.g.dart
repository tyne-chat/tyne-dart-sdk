// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_import_image_sources_schema_avatar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaImportImageSourcesSchemaAvatar
_$PersonaImportImageSourcesSchemaAvatarFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PersonaImportImageSourcesSchemaAvatar', json, (
      $checkedConvert,
    ) {
      final val = PersonaImportImageSourcesSchemaAvatar(
        field: $checkedConvert(
          'field',
          (v) => v == null
              ? PersonaImportImageSourcesSchemaAvatarFieldField.$unknown
              : PersonaImportImageSourcesSchemaAvatarFieldField.fromJson(
                  v as String,
                ),
        ),
        url: $checkedConvert('url', (v) => v as String?),
        mainAvatarEmpty: $checkedConvert(
          'main_avatar_empty',
          (v) => v as bool?,
        ),
      );
      return val;
    }, fieldKeyMap: const {'mainAvatarEmpty': 'main_avatar_empty'});

Map<String, dynamic> _$PersonaImportImageSourcesSchemaAvatarToJson(
  PersonaImportImageSourcesSchemaAvatar instance,
) => <String, dynamic>{
  'url': ?instance.url,
  'field': instance.field,
  'main_avatar_empty': ?instance.mainAvatarEmpty,
};
