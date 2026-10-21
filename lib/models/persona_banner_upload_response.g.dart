// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_banner_upload_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaBannerUploadResponse _$PersonaBannerUploadResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaBannerUploadResponse', json, ($checkedConvert) {
  final val = PersonaBannerUploadResponse(
    bannerHash: $checkedConvert(
      'banner_hash',
      (v) => v as PersonaAssetHashType? ?? '',
    ),
  );
  return val;
}, fieldKeyMap: const {'bannerHash': 'banner_hash'});

Map<String, dynamic> _$PersonaBannerUploadResponseToJson(
  PersonaBannerUploadResponse instance,
) => <String, dynamic>{'banner_hash': instance.bannerHash};
