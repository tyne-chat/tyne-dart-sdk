import 'package:fluxer_dart/gateway_client/event_parser.dart';
import 'package:fluxer_dart/gateway_client/fork_parse_skips.dart';
import 'package:fluxer_dart/gateway_client/gateway_event.dart';
import 'package:fluxer_dart/gateway_client/gateway_types.dart';
import 'package:test/test.dart';

// Fork: the parser reports what it skips (tyne-chat/tyne#193). Kept apart
// from upstream's parser tests so they stay as upstream has them.

Map<String, Object?> _member(String id, {String joinedAt = '2026-01-01'}) =>
    <String, Object?>{
      'user': <String, Object?>{
        'id': id,
        'username': 'user-$id',
        'discriminator': '0001',
      },
      'roles': <String>[],
      'joined_at': joinedAt,
    };

Map<String, dynamic> _guild(List<Map<String, Object?>> members) =>
    <String, dynamic>{
      'id': 'g1',
      'properties': <String, dynamic>{
        'id': 'g1',
        'name': 'Guild g1',
        'owner_id': '100',
      },
      'channels': <Object?>[],
      'members': members,
      'roles': <Object?>[],
      'emojis': <Object?>[],
      'stickers': <Object?>[],
    };

void main() {
  const parser = EventParser();
  late List<(String, Object)> skips;

  setUp(() {
    skips = <(String, Object)>[];
    ForkGatewayParseSkips.onSkipped = (String skipped, Object error) =>
        skips.add((skipped, error));
  });

  tearDown(() => ForkGatewayParseSkips.onSkipped = null);

  test('a guild member that does not parse is skipped and reported', () {
    final GuildCreateData guild = GuildCreateData.fromJson(
      _guild(<Map<String, Object?>>[
        _member('1'),
        _member('2', joinedAt: 'not a date'),
      ]),
    );

    expect(guild.members.map((m) => m.user.id), <String>['1']);
    expect(skips, hasLength(1));
    expect(skips.single.$1, 'GuildMemberResponse');
  });

  test('a READY list item that does not parse is reported', () {
    final GatewayEvent event = parser.parse('READY', <String, dynamic>{
      'session_id': 's1',
      'user': <String, Object?>{
        'id': '100',
        'username': 'me',
        'discriminator': '0001',
      },
      'guilds': <Object?>[],
      'private_channels': <Object?>[],
      'relationships': <Object?>[],
      'read_states': <Object?>['not a read state'],
    });

    expect(event, isA<ReadyEvent>());
    expect((event as ReadyEvent).readStates, isEmpty);
    expect(skips.map((s) => s.$1), <String>['GatewayReadState']);
  });

  test('an embedded member that does not parse is reported', () {
    final GatewayEvent event = parser.parse(
      'MESSAGE_REACTION_ADD',
      <String, dynamic>{
        'channel_id': 'c1',
        'message_id': 'm1',
        'user_id': '2',
        'emoji': <String, Object?>{'id': null, 'name': '👍'},
        'guild_id': 'g1',
        'member': _member('2', joinedAt: 'not a date'),
      },
    );

    expect(event, isA<MessageReactionAddEvent>());
    expect((event as MessageReactionAddEvent).member, isNull);
    expect(skips.map((s) => s.$1), <String>['embedded GuildMemberResponse']);
  });

  test('a list event that does not parse is reported', () {
    final GatewayEvent? event = parser.parseList(
      'WEBAUTHN_CREDENTIALS_UPDATE',
      <Object?>['not a credential'],
    );

    expect(event, isNull);
    expect(skips.map((s) => s.$1), <String>[
      'WEBAUTHN_CREDENTIALS_UPDATE event',
    ]);
  });

  test('a presence user that does not parse is reported', () {
    final GatewayEvent event = parser.parse(
      'PRESENCE_UPDATE',
      <String, dynamic>{
        'user': <String, Object?>{
          'id': '2',
          'username': 'user-2',
          'flags': 'not a number',
        },
        'status': 'online',
      },
    );

    expect(event, isA<PresenceUpdateEvent>());
    expect((event as PresenceUpdateEvent).user, isNull);
    expect(skips.map((s) => s.$1), <String>['presence UserPartialResponse']);
  });

  test('parsing is unchanged without a handler, or with one that throws', () {
    final Map<String, dynamic> raw = _guild(<Map<String, Object?>>[
      _member('1'),
      _member('2', joinedAt: 'not a date'),
    ]);

    ForkGatewayParseSkips.onSkipped = null;
    expect(GuildCreateData.fromJson(raw).members, hasLength(1));

    ForkGatewayParseSkips.onSkipped = (String skipped, Object error) =>
        throw StateError('log failed');
    expect(GuildCreateData.fromJson(raw).members, hasLength(1));
  });
}
