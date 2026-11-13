// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_signal_ref_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSignalRefSchema _$UserSignalRefSchemaFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UserSignalRefSchema', json, ($checkedConvert) {
      final val = UserSignalRefSchema(
        signalId: $checkedConvert('signal_id', (v) => v as String? ?? ''),
        personaId: $checkedConvert(
          'persona_id',
          (v) => v as SnowflakeStringType?,
        ),
      );
      return val;
    }, fieldKeyMap: const {'signalId': 'signal_id', 'personaId': 'persona_id'});

Map<String, dynamic> _$UserSignalRefSchemaToJson(
  UserSignalRefSchema instance,
) => <String, dynamic>{
  'signal_id': instance.signalId,
  'persona_id': instance.personaId,
};
