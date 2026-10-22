// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_update_request_body_variant3_permission_overwrites.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelUpdateRequestBodyVariant3PermissionOverwrites
_$ChannelUpdateRequestBodyVariant3PermissionOverwritesFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ChannelUpdateRequestBodyVariant3PermissionOverwrites',
  json,
  ($checkedConvert) {
    final val = ChannelUpdateRequestBodyVariant3PermissionOverwrites(
      id: $checkedConvert('id', (v) => v as SnowflakeType? ?? ''),
      type: $checkedConvert(
        'type',
        (v) => v == null
            ? ChannelUpdateRequestBodyVariant3PermissionOverwritesTypeType
                  .$unknown
            : ChannelUpdateRequestBodyVariant3PermissionOverwritesTypeType.fromJson(
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
_$ChannelUpdateRequestBodyVariant3PermissionOverwritesToJson(
  ChannelUpdateRequestBodyVariant3PermissionOverwrites instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'allow': ?instance.allow,
  'deny': ?instance.deny,
};
