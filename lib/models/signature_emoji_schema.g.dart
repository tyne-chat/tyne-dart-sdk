// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signature_emoji_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignatureEmojiSchema _$SignatureEmojiSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SignatureEmojiSchema', json, ($checkedConvert) {
  final val = SignatureEmojiSchema(
    name: $checkedConvert('name', (v) => v as String? ?? ''),
    id: $checkedConvert('id', (v) => v as SnowflakeStringType?),
    animated: $checkedConvert('animated', (v) => v as bool?),
  );
  return val;
});

Map<String, dynamic> _$SignatureEmojiSchemaToJson(
  SignatureEmojiSchema instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'name': instance.name,
  'animated': ?instance.animated,
};
