// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_avatar_upload_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaAvatarUploadResponse _$PersonaAvatarUploadResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PersonaAvatarUploadResponse',
  json,
  ($checkedConvert) {
    final val = PersonaAvatarUploadResponse(
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

Map<String, dynamic> _$PersonaAvatarUploadResponseToJson(
  PersonaAvatarUploadResponse instance,
) => <String, dynamic>{
  'avatar_hash': instance.avatarHash,
  'avatar_color': ?instance.avatarColor,
};
