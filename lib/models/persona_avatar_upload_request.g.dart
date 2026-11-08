// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_avatar_upload_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaAvatarUploadRequest _$PersonaAvatarUploadRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaAvatarUploadRequest', json, ($checkedConvert) {
  final val = PersonaAvatarUploadRequest(
    avatar: $checkedConvert('avatar', (v) => v as String? ?? ''),
  );
  return val;
});

Map<String, dynamic> _$PersonaAvatarUploadRequestToJson(
  PersonaAvatarUploadRequest instance,
) => <String, dynamic>{'avatar': instance.avatar};
