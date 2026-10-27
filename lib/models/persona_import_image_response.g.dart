// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_import_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaImportImageResponse _$PersonaImportImageResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaImportImageResponse', json, ($checkedConvert) {
  final val = PersonaImportImageResponse(
    hash: $checkedConvert('hash', (v) => v as PersonaAssetHashType? ?? ''),
    avatarColor: $checkedConvert('avatar_color', (v) => (v as num?)?.toInt()),
  );
  return val;
}, fieldKeyMap: const {'avatarColor': 'avatar_color'});

Map<String, dynamic> _$PersonaImportImageResponseToJson(
  PersonaImportImageResponse instance,
) => <String, dynamic>{
  'hash': instance.hash,
  'avatar_color': ?instance.avatarColor,
};
