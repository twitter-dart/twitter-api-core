// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import '../service/serializable.dart';

dynamic removeNullValues(final dynamic object) {
  if (object is! Map) {
    return object;
  }

  final parameters = <String, dynamic>{};
  object.forEach((key, value) {
    final newObject = removeNullValues(value);
    if (newObject != null) {
      parameters[key] = newObject;
    }
  });

  return parameters.isNotEmpty ? parameters : null;
}

Map<String, String> convertQueryParameters(
  final Map<String, dynamic> queryParameters,
) {
  final serializedParameters = queryParameters.map((key, value) {
    if (value is List<Serializable>?) {
      return MapEntry(
        key,
        value?.toSet().map((e) => e.value).toList().join(','),
      );
    } else if (value is List<Enum>?) {
      return MapEntry(
        key,
        value?.toSet().map((e) => e.name).join(','),
      );
    } else if (value is List?) {
      return MapEntry(
        key,
        value?.toSet().join(','),
      );
    }

    return MapEntry(key, value);
  });

  return Map.from(removeNullValues(serializedParameters) ?? {}).map(
    //! Uri.https(...) needs iterable in the value for query params by
    //! which it means a String in the value of the Map too. So you need
    //! to convert it from Map<String, dynamic> to Map<String, String>
    (key, value) {
      if (value is DateTime) {
        return MapEntry(key, value.toUtc().toIso8601String());
      }

      return MapEntry(key, value.toString());
    },
  );
}
