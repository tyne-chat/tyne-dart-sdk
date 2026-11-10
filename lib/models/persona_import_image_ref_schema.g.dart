// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_import_image_ref_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaImportImageRefSchemaVariant1
_$PersonaImportImageRefSchemaVariant1FromJson(Map<String, dynamic> json) =>
    $checkedCreate('PersonaImportImageRefSchemaVariant1', json, (
      $checkedConvert,
    ) {
      final val = PersonaImportImageRefSchemaVariant1(
        url: $checkedConvert('url', (v) => v as String?),
        hash: $checkedConvert('hash', (v) => v as PersonaAssetHashType?),
      );
      return val;
    });

Map<String, dynamic> _$PersonaImportImageRefSchemaVariant1ToJson(
  PersonaImportImageRefSchemaVariant1 instance,
) => <String, dynamic>{'url': ?instance.url, 'hash': ?instance.hash};
