// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart' hide Headers;

import 'instance/instance_api.dart';
import 'o_auth2/o_auth2_api.dart';
import 'messages/messages_api.dart';
import 'auth/auth_api.dart';
import 'channels/channels_api.dart';
import 'invites/invites_api.dart';
import 'saved_media/saved_media_api.dart';
import 'signal_bar/signal_bar_api.dart';
import 'webhooks/webhooks_api.dart';
import 'discovery/discovery_api.dart';
import 'donations/donations_api.dart';
import 'emojis/emojis_api.dart';
import 'experiments/experiments_api.dart';
import 'gateway/gateway_api.dart';
import 'gi_fs/gi_fs_api.dart';
import 'gifts/gifts_api.dart';
import 'guilds/guilds_api.dart';
import 'users/users_api.dart';
import 'geolocation/geolocation_api.dart';
import 'gi_fs_deprecated/gi_fs_deprecated_api.dart';
import 'premium/premium_api.dart';
import 'billing/billing_api.dart';
import 'read_states/read_states_api.dart';
import 'reports/reports_api.dart';
import 'search/search_api.dart';
import 'stickers/stickers_api.dart';
import 'debug/debug_api.dart';
import 'connections/connections_api.dart';
import 'personas/personas_api.dart';
import 'themes/themes_api.dart';
import 'voice/voice_api.dart';

/// Fluxer API `v1.0.0`.
///
/// API for Fluxer, a free and open source instant messaging and VoIP chat app built for friends, groups, and communities.
class FluxerClient {
  FluxerClient(Dio dio, {String? baseUrl}) : _dio = dio, _baseUrl = baseUrl;

  final Dio _dio;
  final String? _baseUrl;

  static String get version => '1.0.0';

  InstanceApi? _instance;
  OAuth2Api? _oAuth2;
  MessagesApi? _messages;
  AuthApi? _auth;
  ChannelsApi? _channels;
  InvitesApi? _invites;
  SavedMediaApi? _savedMedia;
  SignalBarApi? _signalBar;
  WebhooksApi? _webhooks;
  DiscoveryApi? _discovery;
  DonationsApi? _donations;
  EmojisApi? _emojis;
  ExperimentsApi? _experiments;
  GatewayApi? _gateway;
  GiFsApi? _giFs;
  GiftsApi? _gifts;
  GuildsApi? _guilds;
  UsersApi? _users;
  GeolocationApi? _geolocation;
  GiFsDeprecatedApi? _giFsDeprecated;
  PremiumApi? _premium;
  BillingApi? _billing;
  ReadStatesApi? _readStates;
  ReportsApi? _reports;
  SearchApi? _search;
  StickersApi? _stickers;
  DebugApi? _debug;
  ConnectionsApi? _connections;
  PersonasApi? _personas;
  ThemesApi? _themes;
  VoiceApi? _voice;

  InstanceApi get instance =>
      _instance ??= InstanceApi(_dio, baseUrl: _baseUrl);

  OAuth2Api get oAuth2 => _oAuth2 ??= OAuth2Api(_dio, baseUrl: _baseUrl);

  MessagesApi get messages =>
      _messages ??= MessagesApi(_dio, baseUrl: _baseUrl);

  AuthApi get auth => _auth ??= AuthApi(_dio, baseUrl: _baseUrl);

  ChannelsApi get channels =>
      _channels ??= ChannelsApi(_dio, baseUrl: _baseUrl);

  InvitesApi get invites => _invites ??= InvitesApi(_dio, baseUrl: _baseUrl);

  SavedMediaApi get savedMedia =>
      _savedMedia ??= SavedMediaApi(_dio, baseUrl: _baseUrl);

  SignalBarApi get signalBar =>
      _signalBar ??= SignalBarApi(_dio, baseUrl: _baseUrl);

  WebhooksApi get webhooks =>
      _webhooks ??= WebhooksApi(_dio, baseUrl: _baseUrl);

  DiscoveryApi get discovery =>
      _discovery ??= DiscoveryApi(_dio, baseUrl: _baseUrl);

  DonationsApi get donations =>
      _donations ??= DonationsApi(_dio, baseUrl: _baseUrl);

  EmojisApi get emojis => _emojis ??= EmojisApi(_dio, baseUrl: _baseUrl);

  ExperimentsApi get experiments =>
      _experiments ??= ExperimentsApi(_dio, baseUrl: _baseUrl);

  GatewayApi get gateway => _gateway ??= GatewayApi(_dio, baseUrl: _baseUrl);

  GiFsApi get giFs => _giFs ??= GiFsApi(_dio, baseUrl: _baseUrl);

  GiftsApi get gifts => _gifts ??= GiftsApi(_dio, baseUrl: _baseUrl);

  GuildsApi get guilds => _guilds ??= GuildsApi(_dio, baseUrl: _baseUrl);

  UsersApi get users => _users ??= UsersApi(_dio, baseUrl: _baseUrl);

  GeolocationApi get geolocation =>
      _geolocation ??= GeolocationApi(_dio, baseUrl: _baseUrl);

  GiFsDeprecatedApi get giFsDeprecated =>
      _giFsDeprecated ??= GiFsDeprecatedApi(_dio, baseUrl: _baseUrl);

  PremiumApi get premium => _premium ??= PremiumApi(_dio, baseUrl: _baseUrl);

  BillingApi get billing => _billing ??= BillingApi(_dio, baseUrl: _baseUrl);

  ReadStatesApi get readStates =>
      _readStates ??= ReadStatesApi(_dio, baseUrl: _baseUrl);

  ReportsApi get reports => _reports ??= ReportsApi(_dio, baseUrl: _baseUrl);

  SearchApi get search => _search ??= SearchApi(_dio, baseUrl: _baseUrl);

  StickersApi get stickers =>
      _stickers ??= StickersApi(_dio, baseUrl: _baseUrl);

  DebugApi get debug => _debug ??= DebugApi(_dio, baseUrl: _baseUrl);

  ConnectionsApi get connections =>
      _connections ??= ConnectionsApi(_dio, baseUrl: _baseUrl);

  PersonasApi get personas =>
      _personas ??= PersonasApi(_dio, baseUrl: _baseUrl);

  ThemesApi get themes => _themes ??= ThemesApi(_dio, baseUrl: _baseUrl);

  VoiceApi get voice => _voice ??= VoiceApi(_dio, baseUrl: _baseUrl);
}
