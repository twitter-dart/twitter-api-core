// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_core/src/client/oauth_tokens.dart';

void main() {
  test('properties', () {
    final tokens = OAuthTokens(
      consumerKey: 'consumerKey',
      consumerSecret: 'consumerSecret',
      accessToken: 'accessToken',
      accessTokenSecret: 'accessTokenSecret',
    );

    expect(tokens.consumerKey, 'consumerKey');
    expect(tokens.consumerSecret, 'consumerSecret');
    expect(tokens.accessToken, 'accessToken');
    expect(tokens.accessTokenSecret, 'accessTokenSecret');
  });
}
