import 'package:fluxer_dart/gateway_client/event_parser.dart';
import 'package:fluxer_dart/gateway_client/gateway_event.dart';
import 'package:test/test.dart';

// Fork: persona data on gateway events. Kept apart from upstream's
// event_parser_test.dart so that file stays as upstream has it.
void main() {
  const parser = EventParser();

  group('TYPING_START persona data', () {
    test('TYPING_START without subprofile data', () {
      final data = <String, Object?>{
        'channel_id': '200',
        'user_id': '100',
        'timestamp': 1700000000,
      };
      final event = parser.parse('TYPING_START', data);

      expect(event, isA<TypingStartEvent>());
      final e = event as TypingStartEvent;
      expect(e.subprofile, isNull);
    });

    test('TYPING_START with subprofile data', () {
      final data = <String, Object?>{
        'channel_id': '200',
        'user_id': '100',
        'timestamp': 1700000000,
        'subprofile': {
          'id': 'persona_1',
          'name': 'Ruby',
          'avatar': 'personas/ruby.png',
          'avatar_color': 0xff0000,
          'display_tag_text': 'SYSTEM',
        },
      };
      final event = parser.parse('TYPING_START', data);

      expect(event, isA<TypingStartEvent>());
      final e = event as TypingStartEvent;
      expect(e.subprofile, isNotNull);
      expect(e.subprofile!.id, 'persona_1');
      expect(e.subprofile!.name, 'Ruby');
      expect(e.subprofile!.avatar, 'personas/ruby.png');
      expect(e.subprofile!.avatarColor, 0xff0000);
      expect(e.subprofile!.displayTagText, 'SYSTEM');
    });
  });
}
