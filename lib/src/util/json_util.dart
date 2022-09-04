// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'dart:convert';

import 'package:http/http.dart';

import '../exception/twitter_exception.dart';

dynamic tryJsonDecode(
  final BaseResponse response,
  final String body,
) {
  try {
    return jsonDecode(body);
  } on FormatException {
    throw TwitterException(
      'Failed to decode the response body as JSON.',
      response,
    );
  }
}
