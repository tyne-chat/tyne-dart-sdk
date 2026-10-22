// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bot_profile_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BotProfileUpdateRequest _$BotProfileUpdateRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'BotProfileUpdateRequest',
  json,
  ($checkedConvert) {
    final val = BotProfileUpdateRequest._(
      username: $checkedConvert('username', (v) => v as UsernameType?),
      discriminator: $checkedConvert(
        'discriminator',
        (v) => v as DiscriminatorType?,
      ),
      avatarValue: $checkedConvert('avatar', (v) => v as Base64ImageType?),
      bannerValue: $checkedConvert('banner', (v) => v as Base64ImageType?),
      bioValue: $checkedConvert('bio', (v) => v as String?),
      botFlags: $checkedConvert('bot_flags', (v) => (v as num?)?.toInt()),
    );
    return val;
  },
  fieldKeyMap: const {
    'avatarValue': 'avatar',
    'bannerValue': 'banner',
    'bioValue': 'bio',
    'botFlags': 'bot_flags',
  },
);

Map<String, dynamic> _$BotProfileUpdateRequestToJson(
  BotProfileUpdateRequest instance,
) => <String, dynamic>{
  'username': ?instance.username,
  'discriminator': ?instance.discriminator,
  'bot_flags': ?instance.botFlags,
  'avatar': ?instance.avatarValue,
  'banner': ?instance.bannerValue,
  'bio': ?instance.bioValue,
};
