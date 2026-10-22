// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_update_request_body_variant2_permission_overwrites.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelUpdateRequestBodyVariant2PermissionOverwrites
_$ChannelUpdateRequestBodyVariant2PermissionOverwritesFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ChannelUpdateRequestBodyVariant2PermissionOverwrites',
  json,
  ($checkedConvert) {
    final val = ChannelUpdateRequestBodyVariant2PermissionOverwrites(
      id: $checkedConvert('id', (v) => v as SnowflakeType? ?? ''),
      type: $checkedConvert(
        'type',
        (v) => v == null
            ? ChannelUpdateRequestBodyVariant2PermissionOverwritesTypeType
                  .$unknown
            : ChannelUpdateRequestBodyVariant2PermissionOverwritesTypeType.fromJson(
                (v as num).toInt(),
              ),
      ),
      allow: $checkedConvert('allow', (v) => v as UnsignedInt64Type?),
      deny: $checkedConvert('deny', (v) => v as UnsignedInt64Type?),
    );
    return val;
  },
);

Map<String, dynamic>
_$ChannelUpdateRequestBodyVariant2PermissionOverwritesToJson(
  ChannelUpdateRequestBodyVariant2PermissionOverwrites instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'allow': ?instance.allow,
  'deny': ?instance.deny,
};
