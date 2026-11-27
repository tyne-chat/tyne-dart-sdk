// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_group_members_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonaGroupMembersRequestSchema _$PersonaGroupMembersRequestSchemaFromJson(
  Map<String, dynamic> json,
) =>
    $checkedCreate('PersonaGroupMembersRequestSchema', json, ($checkedConvert) {
      final val = PersonaGroupMembersRequestSchema(
        changes: $checkedConvert(
          'changes',
          (v) =>
              (v as List<dynamic>?)
                  ?.map(
                    (e) => PersonaGroupMembersRequestSchemaChanges.fromJson(
                      e as Map<String, dynamic>,
                    ),
                  )
                  .toList() ??
              [],
        ),
      );
      return val;
    });

Map<String, dynamic> _$PersonaGroupMembersRequestSchemaToJson(
  PersonaGroupMembersRequestSchema instance,
) => <String, dynamic>{'changes': instance.changes};
