// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

import '../models/persona_bulk_import_request_schema.dart';
import '../models/persona_channel_state_schema.dart';
import '../models/persona_channel_state_update_request_schema.dart';
import '../models/persona_channel_states_response_schema.dart';
import '../models/persona_create_request_schema.dart';
import '../models/persona_export_response.dart';
import '../models/persona_import_image_request.dart';
import '../models/persona_import_image_response.dart';
import '../models/persona_list_response_schema.dart';
import '../models/persona_response_schema.dart';
import '../models/persona_settings_response_schema.dart';
import '../models/persona_settings_update_request_schema.dart';
import '../models/persona_update_request_schema.dart';
import '../models/public_persona_list_response_schema.dart';
import '../models/public_persona_response_schema.dart';
import '../models/snowflake_string_type.dart';
import '../models/snowflake_type.dart';

part 'personas_api.g.dart';

@RestApi()
abstract class PersonasApi {
  factory PersonasApi(Dio dio, {String? baseUrl}) = _PersonasApi;

  /// List own personas.
  ///
  /// Retrieves all personas created and owned by the authenticated user.
  @GET('/users/@me/personas')
  Future<PersonaListResponseSchema> listMyPersonas();

  /// Create persona.
  ///
  /// Creates a new persona for the authenticated user.
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/users/@me/personas')
  Future<PersonaResponseSchema> createPersona({
    @Body() required PersonaCreateRequestSchema body,
  });

  /// List the personas selected per channel.
  ///
  /// Lists every channel the authenticated user has a persona selected in. Used when their persona is remembered per channel; a channel that is not listed is used as the account itself.
  @GET('/users/@me/personas/channel-states')
  Future<PersonaChannelStatesResponseSchema> listMyPersonaChannelStates();

  /// Select a persona in a channel.
  ///
  /// Selects one of the authenticated user's personas in a channel they can see, or the account itself with a null persona. Only their own sessions are told.
  ///
  /// [channelId] - The ID of the channel.
  ///
  /// [body] - Name not received - field will be skipped.
  @PUT('/users/@me/personas/channel-states/{channel_id}')
  Future<PersonaChannelStateSchema> setMyPersonaChannelState({
    @Path('channel_id') required SnowflakeType channelId,
    @Body() required PersonaChannelStateUpdateRequestSchema body,
  });

  /// Export own personas.
  ///
  /// Exports all personas of the authenticated user as a ZIP file: a PluralKit export file (pluralkit.json), each persona's avatar and banner and the tag icon, tyne.json listing which image belongs to which persona, and a README. Importing the ZIP gives the personas back.
  @GET('/users/@me/personas/export')
  Future<PersonaExportResponse> exportMyPersonas();

  /// Bulk import personas.
  ///
  /// Imports or synchronizes personas in bulk (e.g. from PluralKit or Tupperbox).
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/users/@me/personas/import')
  Future<PersonaListResponseSchema> importPersonas({
    @Body() required PersonaBulkImportRequestSchema body,
  });

  /// Store an image from a persona export being imported.
  ///
  /// Stores one avatar or banner image read from a persona export ZIP that the user is importing, and returns its hash for use in the import. Counts against the persona image import quota.
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/users/@me/personas/import-image')
  Future<PersonaImportImageResponse> importPersonaImage({
    @Body() required PersonaImportImageRequest body,
  });

  /// Get own persona settings.
  ///
  /// Retrieves persona settings (active mode, display tag, latch state) for the authenticated user.
  @GET('/users/@me/personas/settings')
  Future<PersonaSettingsResponseSchema> getMyPersonaSettings();

  /// Update own persona settings.
  ///
  /// Updates persona settings (active mode, display tag, latch state) for the authenticated user.
  ///
  /// [body] - Name not received - field will be skipped.
  @PATCH('/users/@me/personas/settings')
  Future<PersonaSettingsResponseSchema> updateMyPersonaSettings({
    @Body() PersonaSettingsUpdateRequestSchema? body,
  });

  /// Get own persona by ID.
  ///
  /// Retrieves a single persona owned by the authenticated user.
  ///
  /// [personaId] - Persona Snowflake ID.
  @GET('/users/@me/personas/{persona_id}')
  Future<PersonaResponseSchema> getMyPersona({
    @Path('persona_id') required SnowflakeStringType personaId,
  });

  /// Update persona.
  ///
  /// Updates properties of an existing persona owned by the authenticated user.
  ///
  /// [personaId] - Persona Snowflake ID.
  ///
  /// [body] - Name not received - field will be skipped.
  @PATCH('/users/@me/personas/{persona_id}')
  Future<PersonaResponseSchema> updatePersona({
    @Path('persona_id') required SnowflakeStringType personaId,
    @Body() PersonaUpdateRequestSchema? body,
  });

  /// Delete persona.
  ///
  /// Deletes an existing persona owned by the authenticated user.
  ///
  /// [personaId] - Persona Snowflake ID.
  @DELETE('/users/@me/personas/{persona_id}')
  Future<void> deletePersona({
    @Path('persona_id') required SnowflakeStringType personaId,
  });

  /// List user public personas.
  ///
  /// Retrieves public personas for a target user if mutual context permits.
  ///
  /// [userId] - The ID of the user.
  @GET('/users/{user_id}/personas')
  Future<PublicPersonaListResponseSchema> listUserPublicPersonas({
    @Path('user_id') required SnowflakeType userId,
  });

  /// Get persona profile card by ID.
  ///
  /// Retrieves public or unlisted profile details for a persona if mutual context permits.
  ///
  /// [userId] - User Snowflake ID.
  ///
  /// [personaId] - Persona Snowflake ID.
  @GET('/users/{user_id}/personas/{persona_id}')
  Future<PublicPersonaResponseSchema> getUserPersonaById({
    @Path('user_id') required SnowflakeStringType userId,
    @Path('persona_id') required SnowflakeStringType personaId,
  });
}
