// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_overwrite_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelOverwriteResponse _$ChannelOverwriteResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ChannelOverwriteResponse', json, ($checkedConvert) {
  final val = ChannelOverwriteResponse(
    id: $checkedConvert('id', (v) => v as SnowflakeStringType? ?? ''),
    type: $checkedConvert(
      'type',
      (v) => v == null
          ? ChannelOverwriteType.$unknown
          : ChannelOverwriteType.fromJson((v as num).toInt()),
    ),
    allow: $checkedConvert('allow', (v) => v as Permissions? ?? ''),
    deny: $checkedConvert('deny', (v) => v as Permissions? ?? ''),
  );
  return val;
});

Map<String, dynamic> _$ChannelOverwriteResponseToJson(
  ChannelOverwriteResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'allow': instance.allow,
  'deny': instance.deny,
};
