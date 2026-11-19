// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'snowflake_string_type.dart';

part 'imported_conversation_response.g.dart';

@JsonSerializable()
class ImportedConversationResponse {
  const ImportedConversationResponse({required this.channelId});

  factory ImportedConversationResponse.fromJson(Map<String, Object?> json) =>
      _$ImportedConversationResponseFromJson(json);

  /// Your DM with this Discord import placeholder when it holds imported messages, which can be opened again once closed; null for anyone else, or an empty DM
  @JsonKey(includeIfNull: true, name: 'channel_id')
  final SnowflakeStringType? channelId;

  Map<String, Object?> toJson() => _$ImportedConversationResponseToJson(this);
}
