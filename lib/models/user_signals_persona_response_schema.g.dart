// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_signals_persona_response_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSignalsPersonaResponseSchema _$UserSignalsPersonaResponseSchemaFromJson(
  Map<String, dynamic> json,
) =>
    $checkedCreate('UserSignalsPersonaResponseSchema', json, ($checkedConvert) {
      final val = UserSignalsPersonaResponseSchema(
        changedChannelIds: $checkedConvert(
          'changed_channel_ids',
          (v) =>
              (v as List<dynamic>?)
                  ?.map((e) => e as SnowflakeStringType)
                  .toList() ??
              [],
        ),
      );
      return val;
    }, fieldKeyMap: const {'changedChannelIds': 'changed_channel_ids'});

Map<String, dynamic> _$UserSignalsPersonaResponseSchemaToJson(
  UserSignalsPersonaResponseSchema instance,
) => <String, dynamic>{'changed_channel_ids': instance.changedChannelIds};
