// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_signals_restore_action_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSignalsRestoreActionSchema _$UserSignalsRestoreActionSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UserSignalsRestoreActionSchema', json, ($checkedConvert) {
  final val = UserSignalsRestoreActionSchema(
    kind: $checkedConvert(
      'kind',
      (v) => v == null
          ? UserSignalsRestoreActionSchemaKindKind.$unknown
          : UserSignalsRestoreActionSchemaKindKind.fromJson(v as String),
    ),
    signalId: $checkedConvert('signal_id', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {'signalId': 'signal_id'});

Map<String, dynamic> _$UserSignalsRestoreActionSchemaToJson(
  UserSignalsRestoreActionSchema instance,
) => <String, dynamic>{'kind': instance.kind, 'signal_id': instance.signalId};
