import 'package:fluxer_dart/gateway_client/event_parser.dart';
import 'package:fluxer_dart/gateway_client/gateway_event.dart';
import 'package:test/test.dart';

// Fork: READY's `fork_dm_threads` object (tyne-chat/tyne#699). Kept apart
// from upstream's event_parser_test.dart so that file stays as upstream has it.
void main() {
  const parser = EventParser();

  Map<String, dynamic> ready([Map<String, dynamic> extra = const {}]) =>
      <String, dynamic>{
        'session_id': 'sess-test',
        'user': <String, Object?>{'id': '42', 'username': 'me'},
        ...extra,
      };

  test('READY keeps fork_dm_threads as it arrived', () {
    final Map<String, dynamic> dmThreads = <String, dynamic>{
      'enabled': true,
      'threads': <Object?>[
        <String, Object?>{'id': '900', 'type': 11, 'parent_id': '500'},
      ],
      'read_states': <Object?>[
        <String, Object?>{'id': '900', 'mention_count': 2},
      ],
    };
    final event =
        parser.parse('READY', ready({'fork_dm_threads': dmThreads}))
            as ReadyEvent;

    expect(event.forkDmThreads, same(dmThreads));
    // Upstream's read states stay apart from the DM threads' own.
    expect(event.readStates, isEmpty);
  });

  test('READY without fork_dm_threads leaves the field empty', () {
    final event = parser.parse('READY', ready()) as ReadyEvent;

    expect(event.forkDmThreads, isNull);
  });

  test('a fork_dm_threads that is not an object is ignored', () {
    final event =
        parser.parse('READY', ready({'fork_dm_threads': <Object?>[]}))
            as ReadyEvent;

    expect(event.forkDmThreads, isNull);
  });
}
