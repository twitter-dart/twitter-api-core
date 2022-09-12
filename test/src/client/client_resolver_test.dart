// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_core/src/client/client_resolver.dart';
import 'package:twitter_api_core/src/client/oauth1_client.dart';
import 'package:twitter_api_core/src/client/oauth2_client.dart';
import 'package:twitter_api_core/src/client/user_context.dart';

void main() {
  group('.execute', () {
    test('when oauth1 client is null and user context is oauth2OrOAuth1', () {
      final resolver = ClientResolver(null, OAuth2Client(bearerToken: ''));
      final client = resolver.execute(UserContext.oauth2OrOAuth1);

      expect(client, isA<OAuth2Client>());
    });

    test('when oauth1 client is null and user context is oauth2Only', () {
      final resolver = ClientResolver(null, OAuth2Client(bearerToken: ''));
      final client = resolver.execute(UserContext.oauth2Only);

      expect(client, isA<OAuth2Client>());
    });

    test('when oauth1 client is not null and user context is oauth2Only', () {
      final resolver = ClientResolver(
        OAuth1Client(
            consumerKey: '',
            consumerSecret: '',
            accessToken: '',
            accessTokenSecret: ''),
        OAuth2Client(bearerToken: ''),
      );

      final client = resolver.execute(UserContext.oauth2Only);

      expect(client, isA<OAuth2Client>());
    });

    test('when oauth1 client is not null and user context is oauth2OrOAuth1',
        () {
      final resolver = ClientResolver(
        OAuth1Client(
            consumerKey: '',
            consumerSecret: '',
            accessToken: '',
            accessTokenSecret: ''),
        OAuth2Client(bearerToken: ''),
      );

      final client = resolver.execute(UserContext.oauth2OrOAuth1);

      expect(client, isA<OAuth1Client>());
    });

    test('when user context is oauth1Only', () {
      final resolver = ClientResolver(
        OAuth1Client(
            consumerKey: '',
            consumerSecret: '',
            accessToken: '',
            accessTokenSecret: ''),
        OAuth2Client(bearerToken: ''),
      );

      final client = resolver.execute(UserContext.oauth1Only);

      expect(client, isA<OAuth1Client>());
    });
  });
}
