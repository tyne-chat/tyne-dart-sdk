// Fork: builds a JSON value from an OpenAPI schema, with every optional field
// filled in, so a test can feed the generated models what the spec says the
// server may send. The roundtrip tests use JSON written by hand, which agrees
// with a wrong generated type as long as whoever wrote it read the model
// (tyne-chat/tyne#454). tyne-mobile's discovery test uses this file too.

class SpecSampler {
  SpecSampler(Map<String, dynamic> spec)
    : schemas =
          (spec['components'] as Map<String, dynamic>)['schemas']
              as Map<String, dynamic>;

  final Map<String, dynamic> schemas;

  static const Object _leaveOut = Object();

  /// A value for the schema called [name], or null when it refers only to
  /// itself.
  Object? sample(String name) {
    final Object? value = _sample(_schema(name), <String>{name});
    return identical(value, _leaveOut) ? null : value;
  }

  Map<String, dynamic> _schema(String name) =>
      schemas[name] as Map<String, dynamic>;

  Object? _sample(Map<String, dynamic> schema, Set<String> path) {
    final String? ref = schema[r'$ref'] as String?;
    if (ref != null) {
      final String name = ref.split('/').last;
      // A schema that contains itself: stop here, as a server would.
      if (path.contains(name)) {
        return _leaveOut;
      }
      return _sample(_schema(name), <String>{...path, name});
    }
    if (schema.containsKey('const')) {
      return schema['const'];
    }
    final List<dynamic>? values = schema['enum'] as List<dynamic>?;
    if (values != null) {
      return values.firstWhere((Object? value) => value != null);
    }
    final List<dynamic>? branches =
        (schema['anyOf'] ?? schema['oneOf']) as List<dynamic>?;
    if (branches != null) {
      return _sample(_firstNonNullBranch(branches), path);
    }
    switch (_type(schema)) {
      case 'object':
        return _object(schema, path);
      case 'array':
        final Object? item = _sample(
          schema['items'] as Map<String, dynamic>,
          path,
        );
        return identical(item, _leaveOut) ? <Object?>[] : <Object?>[item];
      case 'string':
        return _string(schema);
      case 'integer':
      case 'number':
        return (schema['minimum'] as num?) ?? 1;
      case 'boolean':
        return true;
      default:
        return <String, Object?>{};
    }
  }

  Map<String, Object?> _object(Map<String, dynamic> schema, Set<String> path) {
    final Map<String, Object?> object = <String, Object?>{};
    final Map<String, dynamic>? properties =
        schema['properties'] as Map<String, dynamic>?;
    properties?.forEach((String key, dynamic value) {
      final Object? sampled = _sample(value as Map<String, dynamic>, path);
      if (!identical(sampled, _leaveOut)) {
        object[key] = sampled;
      }
    });
    final Object? extra = schema['additionalProperties'];
    if (extra is Map<String, dynamic> && extra.isNotEmpty) {
      final Object? sampled = _sample(extra, path);
      if (!identical(sampled, _leaveOut)) {
        object['key'] = sampled;
      }
    }
    return object;
  }

  Map<String, dynamic> _firstNonNullBranch(List<dynamic> branches) {
    return branches.cast<Map<String, dynamic>>().firstWhere(
      (Map<String, dynamic> branch) => branch['type'] != 'null',
    );
  }

  String? _type(Map<String, dynamic> schema) {
    final Object? type = schema['type'];
    if (type is List<dynamic>) {
      return type.cast<String>().firstWhere((String name) => name != 'null');
    }
    return type as String? ??
        (schema.containsKey('properties') ? 'object' : null);
  }

  String _string(Map<String, dynamic> schema) {
    switch (schema['format']) {
      case 'date-time':
        return '2026-01-02T03:04:05.000Z';
      case 'date':
        return '2026-01-02';
      case 'uri':
        return 'https://example.com/sample';
      case 'email':
        return 'sample@example.com';
      case 'snowflake':
        return '123456789012345678';
      default:
        return 'sample';
    }
  }
}
