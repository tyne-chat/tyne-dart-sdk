// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'server_list_buttons_schema.g.dart';

/// Visibility configuration for special buttons in the server list column
@JsonSerializable()
class ServerListButtonsSchema {
  const ServerListButtonsSchema({
    this.favorites = true,
    this.explore = true,
    this.createJoin = true,
    this.download = true,
    this.help = true,
  });

  factory ServerListButtonsSchema.fromJson(Map<String, Object?> json) =>
      _$ServerListButtonsSchemaFromJson(json);

  /// Whether the Favorites button is visible in the server list
  final bool favorites;

  /// Whether the Explore communities button is visible in the server list
  final bool explore;

  /// Whether the Create or join a community button is visible in the server list
  @JsonKey(name: 'create_join')
  final bool createJoin;

  /// Whether the Download desktop app button is visible in the server list
  final bool download;

  /// Whether the Help center button is visible in the server list
  final bool help;

  Map<String, Object?> toJson() => _$ServerListButtonsSchemaToJson(this);
}
