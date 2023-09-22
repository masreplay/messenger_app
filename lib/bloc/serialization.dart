typedef FromJsonGeneric<R> = R Function(Object? map);
typedef ToJsonGeneric<T> = Object? Function(T map);

/// Some sort of code that do serialization i need to explain
FromJsonGeneric<List<R>> serializeListOfMaps<R>(
  R Function(Map<String, dynamic> map) callback,
) =>
    (Object? map) => (map as List<dynamic>)
        .map((e) => callback(e as Map<String, dynamic>))
        .toList();

ToJsonGeneric<List<T>> deserializeListOfMaps<T>(
  Map<String, dynamic> Function(T data) callback,
) =>
    (List<T> map) => map.map((e) => callback(e)).toList();
