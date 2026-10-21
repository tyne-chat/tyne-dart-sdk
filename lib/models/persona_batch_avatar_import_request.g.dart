// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_batch_avatar_import_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaBatchAvatarImportRequest _$PersonaBatchAvatarImportRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaBatchAvatarImportRequest', json, ($checkedConvert) {
  final val = PersonaBatchAvatarImportRequest(
    urls: $checkedConvert(
      'urls',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
    ),
    kind: $checkedConvert(
      'kind',
      (v) =>
          v == null ? null : PersonaImportImageKindSchema.fromJson(v as String),
    ),
  );
  return val;
});

Map<String, dynamic> _$PersonaBatchAvatarImportRequestToJson(
  PersonaBatchAvatarImportRequest instance,
) => <String, dynamic>{'urls': instance.urls, 'kind': ?instance.kind};
