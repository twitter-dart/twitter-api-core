// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:http/http.dart' as http;

// Project imports:
import '../exception/twitter_exception.dart';

/// Provides the convenience utils for OAuth.
class OAuthUtils {
  /// Returns the App-Only bearer token associated with
  /// [consumerKey] and [consumerSecret].
  static Future<String> generateAppOnlyBearerToken({
    required String consumerKey,
    required String consumerSecret,
  }) async {
    final credentials = base64Encode('$consumerKey:$consumerSecret'.codeUnits);

    final response = await http.post(
      Uri.https('api.twitter.com', '/oauth2/token'),
      headers: {
        'Authorization': 'Basic $credentials',
        'Content-Type': 'application/x-www-form-urlencoded;charset=UTF-8'
      },
      body: {
        'grant_type': 'client_credentials',
      },
    );

    if (response.statusCode != 200) {
      throw TwitterException('Failed to obtain a bearer token.', response);
    }

    return jsonDecode(response.body)['access_token'];
  }
}
