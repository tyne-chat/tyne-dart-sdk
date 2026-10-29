// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_pass_holder_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperatorPassHolderResponse _$OperatorPassHolderResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'OperatorPassHolderResponse',
  json,
  ($checkedConvert) {
    final val = OperatorPassHolderResponse(
      since: $checkedConvert(
        'since',
        (v) => v == null ? _$missingDateTime() : DateTime.parse(v as String),
      ),
      source: $checkedConvert(
        'source',
        (v) => v == null
            ? OperatorPassHolderSourceSchema.$unknown
            : OperatorPassHolderSourceSchema.fromJson(v as String),
      ),
      count: $checkedConvert('count', (v) => (v as num?)?.toInt() ?? 0),
      wallChosen: $checkedConvert('wall_chosen', (v) => v as bool? ?? false),
      recognitionCount: $checkedConvert(
        'recognition_count',
        (v) => (v as num?)?.toInt(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'wallChosen': 'wall_chosen',
    'recognitionCount': 'recognition_count',
  },
);

Map<String, dynamic> _$OperatorPassHolderResponseToJson(
  OperatorPassHolderResponse instance,
) => <String, dynamic>{
  'since': instance.since.toIso8601String(),
  'source': instance.source,
  'count': instance.count,
  'recognition_count': ?instance.recognitionCount,
  'wall_chosen': instance.wallChosen,
};
