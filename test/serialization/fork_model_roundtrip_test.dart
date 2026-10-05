import 'dart:convert';

import 'package:fluxer_dart/export.dart';
import 'package:test/test.dart';

// Fork: roundtrips for the models this fork adds to the API. They are kept apart
// from upstream's model_roundtrip_test.dart so that file stays as upstream has it.
void main() {
  group('MessageResponseSchema roundtrip', () {
    test('roundtrips with persona and subprofile payload', () {
      final json = <String, Object?>{
        'id': '503',
        'channel_id': '100',
        'author': {
          'id': '123',
          'username': 'sender',
          'discriminator': '0001',
          'flags': 0,
        },
        'type': 0,
        'flags': 0,
        'content': 'proxied persona message',
        'timestamp': '2026-03-20T12:00:00.000Z',
        'pinned': false,
        'mention_everyone': false,
        'tts': false,
        'mentions': <Object?>[],
        'mention_roles': <String>[],
        'subprofile': {
          'id': 'persona-abc',
          'name': 'Persona Alice',
          'avatar': 'avatar_hash_abc',
          'avatar_color': 0xFF0000,
          'display_tag_text': 'Wonderland',
          'pronouns': 'she/her',
          'visibility': 'public',
        },
      };

      final model = MessageResponseSchema.fromJson(json);
      expect(model.subprofile, isNotNull);
      expect(model.subprofile!.id, 'persona-abc');
      expect(model.subprofile!.name, 'Persona Alice');
      expect(model.subprofile!.displayTagText, 'Wonderland');
      expect(model.subprofile!.pronouns, 'she/her');

      final serialized =
          jsonDecode(jsonEncode(model.toJson())) as Map<String, Object?>;
      final roundtripped = MessageResponseSchema.fromJson(serialized);
      expect(roundtripped.subprofile?.id, 'persona-abc');
      expect(roundtripped.subprofile?.name, 'Persona Alice');
    });

    test('deserializes referenced_message with subprofile', () {
      final json = <String, Object?>{
        'id': '601',
        'channel_id': '100',
        'author': {
          'id': '123',
          'username': 'sender',
          'discriminator': '0001',
          'flags': 0,
        },
        'type': 19,
        'flags': 0,
        'content': 'replying to persona message',
        'timestamp': '2026-03-20T12:01:00.000Z',
        'pinned': false,
        'mention_everyone': false,
        'tts': false,
        'mentions': <Object?>[],
        'mention_roles': <String>[],
        'referenced_message': {
          'id': '503',
          'channel_id': '100',
          'author': {
            'id': '123',
            'username': 'sender',
            'discriminator': '0001',
            'flags': 0,
          },
          'type': 0,
          'flags': 0,
          'content': 'original persona message',
          'timestamp': '2026-03-20T12:00:00.000Z',
          'pinned': false,
          'mention_everyone': false,
          'tts': false,
          'mentions': <Object?>[],
          'mention_roles': <String>[],
          'subprofile': {
            'id': 'persona-abc',
            'name': 'Persona Alice',
            'avatar': 'avatar_hash_abc',
            'display_tag_text': 'Wonderland',
          },
        },
      };

      final model = MessageResponseSchema.fromJson(json);
      expect(model.referencedMessage, isNotNull);
      expect(model.referencedMessage!.id, '503');
      expect(model.referencedMessage!.subprofile, isNotNull);
      expect(model.referencedMessage!.subprofile!.name, 'Persona Alice');
      expect(model.referencedMessage!.subprofile!.displayTagText, 'Wonderland');

      final serialized =
          jsonDecode(jsonEncode(model.toJson())) as Map<String, Object?>;
      final roundtripped = MessageResponseSchema.fromJson(serialized);
      expect(roundtripped.referencedMessage?.subprofile?.name, 'Persona Alice');
    });
  });

  group('MessageSubprofileResponseSchema roundtrip', () {
    test('deserializes and serializes with required and optional fields', () {
      final json = <String, Object?>{
        'id': 'persona-1',
        'name': 'Alice',
        'avatar': 'avatar_hash_1',
        'avatar_color': 0xFF0000,
        'display_tag_text': 'Wonderland',
        'display_tag_icon': 'icon_hash_1',
        'pronouns': 'she/her',
        'color': 0xFF0000,
        'bio': 'Alice bio',
        'visibility': 'public',
      };

      final model = MessageSubprofileResponseSchema.fromJson(json);
      expect(model.id, 'persona-1');
      expect(model.name, 'Alice');
      expect(model.avatar, 'avatar_hash_1');
      expect(model.avatarColor, 0xFF0000);
      expect(model.displayTagText, 'Wonderland');
      expect(model.displayTagIcon, 'icon_hash_1');
      expect(model.pronouns, 'she/her');
      expect(model.color, 0xFF0000);
      expect(model.bio, 'Alice bio');
      expect(model.visibility, PersonaVisibilitySchema.public);

      final serialized =
          jsonDecode(jsonEncode(model.toJson())) as Map<String, Object?>;
      final roundtripped = MessageSubprofileResponseSchema.fromJson(serialized);

      expect(roundtripped.id, model.id);
      expect(roundtripped.name, model.name);
      expect(roundtripped.visibility, PersonaVisibilitySchema.public);
    });

    test('handles null optional fields and different visibility levels', () {
      final json = <String, Object?>{
        'id': 'persona-2',
        'name': 'Bob',
        'visibility': 'unlisted',
      };

      final model = MessageSubprofileResponseSchema.fromJson(json);
      expect(model.id, 'persona-2');
      expect(model.name, 'Bob');
      expect(model.visibility, PersonaVisibilitySchema.unlisted);
      expect(model.avatar, isNull);
      expect(model.avatarColor, isNull);
      expect(model.displayTagText, isNull);
      expect(model.pronouns, isNull);
      expect(model.bio, isNull);

      final serialized = model.toJson();
      expect(serialized['id'], 'persona-2');
      expect(serialized['name'], 'Bob');
      expect(serialized['visibility'], PersonaVisibilitySchema.unlisted);
      expect(serialized.containsKey('avatar'), isFalse);
    });
  });

  group('InstanceCommunitySchema roundtrip', () {
    test('roundtrips with server_list_buttons', () {
      final json = <String, Object?>{
        'single_community': true,
        'single_community_guild_id': 'guild-123',
        'direct_messages_disabled': false,
        'guild_create_access': true,
        'server_list_buttons': <String, dynamic>{
          'favorites': false,
          'explore': true,
          'create_join': false,
          'download': true,
          'help': true,
        },
      };

      final model = InstanceCommunitySchema.fromJson(json);
      expect(model.singleCommunity, isTrue);
      expect(model.singleCommunityGuildId, 'guild-123');
      expect(model.directMessagesDisabled, isFalse);
      expect(model.guildCreateAccess, isTrue);
      expect(model.serverListButtons, isNotNull);
      expect(model.serverListButtons!.favorites, isFalse);
      expect(model.serverListButtons!.createJoin, isFalse);
      expect(model.serverListButtons!.help, isTrue);

      final serialized =
          jsonDecode(jsonEncode(model.toJson())) as Map<String, Object?>;
      final roundtripped = InstanceCommunitySchema.fromJson(serialized);

      expect(roundtripped.singleCommunity, isTrue);
      expect(roundtripped.singleCommunityGuildId, 'guild-123');
      expect(roundtripped.directMessagesDisabled, isFalse);
      expect(roundtripped.guildCreateAccess, isTrue);
      expect(roundtripped.serverListButtons, isNotNull);
      expect(roundtripped.serverListButtons!.favorites, isFalse);
      expect(roundtripped.serverListButtons!.createJoin, isFalse);
    });

    test('roundtrips without server_list_buttons and with nulls', () {
      final json = <String, Object?>{
        'single_community': false,
        'single_community_guild_id': null,
        'direct_messages_disabled': true,
        'guild_create_access': false,
      };

      final model = InstanceCommunitySchema.fromJson(json);
      expect(model.singleCommunity, isFalse);
      expect(model.singleCommunityGuildId, isNull);
      expect(model.directMessagesDisabled, isTrue);
      expect(model.guildCreateAccess, isFalse);
      expect(model.serverListButtons, isNull);

      final serialized =
          jsonDecode(jsonEncode(model.toJson())) as Map<String, Object?>;
      final roundtripped = InstanceCommunitySchema.fromJson(serialized);

      expect(roundtripped.singleCommunity, isFalse);
      expect(roundtripped.singleCommunityGuildId, isNull);
      expect(roundtripped.directMessagesDisabled, isTrue);
      expect(roundtripped.guildCreateAccess, isFalse);
      expect(roundtripped.serverListButtons, isNull);
    });
  });
}
