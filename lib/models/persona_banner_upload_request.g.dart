// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_banner_upload_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaBannerUploadRequest _$PersonaBannerUploadRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaBannerUploadRequest', json, ($checkedConvert) {
  final val = PersonaBannerUploadRequest(
    banner: $checkedConvert('banner', (v) => v as String? ?? ''),
  );
  return val;
});

Map<String, dynamic> _$PersonaBannerUploadRequestToJson(
  PersonaBannerUploadRequest instance,
) => <String, dynamic>{'banner': instance.banner};
