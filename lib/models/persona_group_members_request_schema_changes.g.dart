// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_group_members_request_schema_changes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaGroupMembersRequestSchemaChanges
_$PersonaGroupMembersRequestSchemaChangesFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PersonaGroupMembersRequestSchemaChanges', json, (
  $checkedConvert,
) {
  final val = PersonaGroupMembersRequestSchemaChanges(
    groupId: $checkedConvert(
      'group_id',
      (v) => v as SnowflakeStringType? ?? '',
    ),
    add: $checkedConvert(
      'add',
      (v) =>
          (v as List<dynamic>?)?.map((e) => e as SnowflakeStringType).toList(),
    ),
    remove: $checkedConvert(
      'remove',
      (v) =>
          (v as List<dynamic>?)?.map((e) => e as SnowflakeStringType).toList(),
    ),
  );
  return val;
}, fieldKeyMap: const {'groupId': 'group_id'});

Map<String, dynamic> _$PersonaGroupMembersRequestSchemaChangesToJson(
  PersonaGroupMembersRequestSchemaChanges instance,
) => <String, dynamic>{
  'group_id': instance.groupId,
  'add': ?instance.add,
  'remove': ?instance.remove,
};
