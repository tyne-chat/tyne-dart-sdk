import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

import 'fork_spec_sampler.dart';
import 'model_factories.dart';

// Fork: every model must parse what the spec it was generated from describes.
// The generator can get a type wrong and still write valid Dart, as it did with
// a list of enums, which came out as one enum (tyne-chat/tyne#454).
//
// A failure here means this generated SDK could fail on a real server's
// response. Never fix it by hand under lib/ (AGENTS.md). Keep the last good SDK
// and open an issue. Add a model to [knownMismatches] only when the app cannot
// meet the failure, and say why. An entry that starts to parse fails the test.

const Map<String, String> knownMismatches = <String, String>{
  // `hidden_built_in_guild_badges` is a list in the spec and one enum value in
  // the SDK. The app ignores the field, and the server leaves an empty list out.
  'WellKnownFluxerResponse': 'tyne-chat/tyne#454',
  // A list or an object in the spec; the SDK reads only an object. The app
  // never calls this route.
  'OAuth2ApplicationsMeResponse': 'not called by the app',
  // Only sent, never parsed: the spec lets `id` be a number, and the SDK writes
  // a string, which the server accepts.
  'ClientAttachmentReferenceRequest': 'request only',
  'GuildCreateRequest': 'request only',
  'TemplateChannel': 'request only',
  'TemplateRole': 'request only',
  'TemplateSerializedGuild': 'request only',
};

void main() {
  final SpecSampler sampler = SpecSampler(
    jsonDecode(File('.fork-openapi.json').readAsStringSync())
        as Map<String, dynamic>,
  );
  final Iterable<String> models = tolerantModelFactories.keys.where(
    sampler.schemas.containsKey,
  );

  test('the spec and the models overlap', () {
    expect(models.length, greaterThan(300));
  });

  group('parses what the spec describes:', () {
    for (final String model in models) {
      final String? known = knownMismatches[model];
      test(model, () {
        void parse() => tolerantModelFactories[model]!(
          sampler.sample(model)! as Map<String, Object?>,
        );
        if (known == null) {
          parse();
        } else {
          expect(
            parse,
            throwsA(anything),
            reason: 'This parses now: remove it from knownMismatches ($known).',
          );
        }
      });
    }
  });
}
