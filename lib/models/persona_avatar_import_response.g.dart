// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_avatar_import_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaAvatarImportResponse _$PersonaAvatarImportResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PersonaAvatarImportResponse',
  json,
  ($checkedConvert) {
    final val = PersonaAvatarImportResponse(
      avatarHash: $checkedConvert(
        'avatar_hash',
        (v) => v as PersonaAssetHashType? ?? '',
      ),
      avatarColor: $checkedConvert('avatar_color', (v) => (v as num?)?.toInt()),
    );
    return val;
  },
  fieldKeyMap: const {
    'avatarHash': 'avatar_hash',
    'avatarColor': 'avatar_color',
  },
);

Map<String, dynamic> _$PersonaAvatarImportResponseToJson(
  PersonaAvatarImportResponse instance,
) => <String, dynamic>{
  'avatar_hash': instance.avatarHash,
  'avatar_color': ?instance.avatarColor,
};
