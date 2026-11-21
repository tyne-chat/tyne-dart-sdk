// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_avatar_import_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaAvatarImportRequest _$PersonaAvatarImportRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaAvatarImportRequest', json, ($checkedConvert) {
  final val = PersonaAvatarImportRequest(
    url: $checkedConvert('url', (v) => v as String? ?? ''),
  );
  return val;
});

Map<String, dynamic> _$PersonaAvatarImportRequestToJson(
  PersonaAvatarImportRequest instance,
) => <String, dynamic>{'url': instance.url};
