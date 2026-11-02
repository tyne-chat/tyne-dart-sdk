// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_list_buttons_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServerListButtonsSchema _$ServerListButtonsSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ServerListButtonsSchema', json, ($checkedConvert) {
  final val = ServerListButtonsSchema(
    favorites: $checkedConvert('favorites', (v) => v as bool? ?? true),
    explore: $checkedConvert('explore', (v) => v as bool? ?? true),
    createJoin: $checkedConvert('create_join', (v) => v as bool? ?? true),
    download: $checkedConvert('download', (v) => v as bool? ?? true),
    help: $checkedConvert('help', (v) => v as bool? ?? true),
  );
  return val;
}, fieldKeyMap: const {'createJoin': 'create_join'});

Map<String, dynamic> _$ServerListButtonsSchemaToJson(
  ServerListButtonsSchema instance,
) => <String, dynamic>{
  'favorites': instance.favorites,
  'explore': instance.explore,
  'create_join': instance.createJoin,
  'download': instance.download,
  'help': instance.help,
};
