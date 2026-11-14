// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_import_image_sources_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaImportImageSourcesSchema _$PersonaImportImageSourcesSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaImportImageSourcesSchema', json, ($checkedConvert) {
  final val = PersonaImportImageSourcesSchema._(
    avatarValue: $checkedConvert(
      'avatar',
      (v) => v == null
          ? null
          : PersonaImportImageSourcesSchemaAvatar.fromJson(
              v as Map<String, dynamic>,
            ),
    ),
    bannerValue: $checkedConvert(
      'banner',
      (v) => v == null
          ? null
          : PersonaImportImageSourcesSchemaBanner.fromJson(
              v as Map<String, dynamic>,
            ),
    ),
  );
  return val;
}, fieldKeyMap: const {'avatarValue': 'avatar', 'bannerValue': 'banner'});

Map<String, dynamic> _$PersonaImportImageSourcesSchemaToJson(
  PersonaImportImageSourcesSchema instance,
) => <String, dynamic>{
  'avatar': ?instance.avatarValue,
  'banner': ?instance.bannerValue,
};
