# Tyne Dart SDK: guide for agents and contributors

This is the Dart SDK of [Tyne](https://github.com/tyne-chat/tyne), a fork of Fluxer's
[dart_sdk](https://github.com/fluxerapp/dart_sdk), used by the mobile client
[tyne-chat/tyne-mobile](https://github.com/tyne-chat/tyne-mobile) as its `dart_sdk` submodule. The
working branch is `tyne`. Issues live on `tyne-chat/tyne`.

If you change something this file describes, update it in the same commit. Do not add a `CLAUDE.md`
or `GEMINI.md` to the repository: both tools read this file.

## Almost everything here is generated

Everything under `lib/` is generated from the Tyne server's OpenAPI spec, except
`lib/gateway_client/` and `lib/gateway.dart`. That includes `lib/models/**`, every `*_api.dart`,
`lib/export.dart`, `lib/fluxer_client.dart` and every `*.g.dart`.

- **Never edit generated files by hand**, not even "just one field" or "just to fix the build": the
  next regeneration or rebase deletes the edit. "I edited the model" is never a valid description of
  a change under `lib/models`.
- **Never create files or folders under `lib/`** outside `lib/gateway_client/`: regeneration deletes
  everything else there.
- **`lib/gateway_client/`** is the only place for hand-written code: gateway payloads and connection
  logic, which the OpenAPI spec does not describe. Helpers, extensions and convenience wrappers belong
  in the mobile app, not here.
- In a merge or rebase conflict on a generated file, do not merge the two sides: take upstream's
  version and regenerate.

## Changing the SDK

To add or change a field, model, endpoint or parameter:

1. In the server repository, change the Zod schema (`packages/schema/src/domains/...`) or the
   route's `OpenAPI({...})` metadata, and run `pnpm openapi:generate`.
2. Regenerate this SDK from that spec with the maintainers' regeneration script (`regen_dart_sdk.sh`).
   Do not run upstream's `scripts/openapi_sdk.sh regenerate`: it commits and pushes to `main`.
3. Adapt the mobile app to the generated types.

Commit and push in that order: the server repository, then this SDK, then tyne-mobile, whose
submodule pointer must name an SDK commit that is already pushed.

The regeneration script writes `.fork-openapi.json` (the spec the SDK was generated from) and
`.fork-openapi-source`; never edit either. The stored spec exists because the same API can be written
in more than one key order and the generator follows that order, so a server rebase alone must not
change the SDK. Its `--check` mode, which needs a clean tree, fails if regenerating from the stored
spec does not reproduce `lib/` exactly (a generated file was edited by hand) or if the stored spec is
no longer the same API as today's (the API changed: regenerate and commit).

## Tests and checks

- Tests for a new or changed model go in `test/serialization/fork_model_roundtrip_test.dart` and
  assert only fields the generated model declares. Upstream's `model_roundtrip_test.dart` stays as
  upstream has it, so it cannot conflict on rebase.
- Before committing: `dart analyze && dart test` (the nightly rebase gate runs the same).
