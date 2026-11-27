// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_signal_entry_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelSignalEntrySchema _$ChannelSignalEntrySchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ChannelSignalEntrySchema',
  json,
  ($checkedConvert) {
    final val = ChannelSignalEntrySchema(
      signalId: $checkedConvert('signal_id', (v) => v as String? ?? ''),
      user: $checkedConvert(
        'user',
        (v) => v == null
            ? _$missingUserPartialResponse()
            : UserPartialResponse.fromJson(v as Map<String, dynamic>),
      ),
      personaId: $checkedConvert(
        'persona_id',
        (v) => v as SnowflakeStringType?,
      ),
      subprofile: $checkedConvert(
        'subprofile',
        (v) => v == null
            ? null
            : MessageSubprofileResponseSchema.fromJson(
                v as Map<String, dynamic>,
              ),
      ),
      activatedAt: $checkedConvert(
        'activated_at',
        (v) => (v as num?)?.toInt() ?? 0,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'signalId': 'signal_id',
    'personaId': 'persona_id',
    'activatedAt': 'activated_at',
  },
);

Map<String, dynamic> _$ChannelSignalEntrySchemaToJson(
  ChannelSignalEntrySchema instance,
) => <String, dynamic>{
  'signal_id': instance.signalId,
  'user': instance.user,
  'persona_id': instance.personaId,
  'subprofile': instance.subprofile,
  'activated_at': instance.activatedAt,
};
