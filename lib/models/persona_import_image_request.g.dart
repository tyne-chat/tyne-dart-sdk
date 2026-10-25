// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_import_image_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaImportImageRequest _$PersonaImportImageRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaImportImageRequest', json, ($checkedConvert) {
  final val = PersonaImportImageRequest(
    kind: $checkedConvert(
      'kind',
      (v) => v == null
          ? PersonaImportImageKindSchema.$unknown
          : PersonaImportImageKindSchema.fromJson(v as String),
    ),
    image: $checkedConvert('image', (v) => v as String? ?? ''),
  );
  return val;
});

Map<String, dynamic> _$PersonaImportImageRequestToJson(
  PersonaImportImageRequest instance,
) => <String, dynamic>{'kind': instance.kind, 'image': instance.image};
