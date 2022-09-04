// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:async';

// Package imports:
import 'package:http/http.dart' as http;

// Project imports:
import '../config/retry_config.dart';
import 'client.dart';
import 'client_resolver.dart';
import 'oauth1_client.dart';
import 'oauth2_client.dart';
import 'oauth_tokens.dart';
import 'retry_policy.dart';
import 'stream_request.dart';
import 'user_context.dart';

abstract class ClientContext {
  /// Returns the new instance of [ClientContext].
  factory ClientContext({
    required String bearerToken,
    OAuthTokens? oauthTokens,
    required Duration timeout,
    RetryConfig? retryConfig,
  }) =>
      _ClientContext(
        bearerToken: bearerToken,
        oauthTokens: oauthTokens,
        timeout: timeout,
        retryConfig: retryConfig,
      );

  Future<http.Response> get(UserContext userContext, Uri uri);

  Future<http.Response> post(
    UserContext userContext,
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
  });

  Future<http.Response> delete(
    UserContext userContext,
    Uri uri,
  );

  Future<http.Response> put(
    UserContext userContext,
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
  });

  Future<http.StreamedResponse> getStream(
    UserContext userContext,
    StreamRequest request,
  );
}

class _ClientContext implements ClientContext {
  _ClientContext({
    required String bearerToken,
    OAuthTokens? oauthTokens,
    required this.timeout,
    RetryConfig? retryConfig,
  })  : _clientResolver = ClientResolver(
          oauthTokens != null
              ? OAuth1Client(
                  consumerKey: oauthTokens.consumerKey,
                  consumerSecret: oauthTokens.consumerSecret,
                  accessToken: oauthTokens.accessToken,
                  accessTokenSecret: oauthTokens.accessTokenSecret,
                )
              : null,
          OAuth2Client(bearerToken: bearerToken),
        ),
        _retryPolicy = RetryPolicy(retryConfig);

  // The resolver of clients
  final ClientResolver _clientResolver;

  /// The policy of retry.
  final RetryPolicy _retryPolicy;

  /// The timeout
  final Duration timeout;

  @override
  Future<http.Response> get(
    UserContext userContext,
    Uri uri,
  ) async =>
      await _challengeWithRetryIfNecessary(
        _clientResolver.execute(userContext),
        (client) async => await client.get(uri, timeout: timeout),
      );

  @override
  Future<http.StreamedResponse> getStream(
    UserContext userContext,
    StreamRequest request,
  ) async =>
      await _challengeWithRetryIfNecessary(
        _clientResolver.execute(userContext),
        (client) async => await client.getStream(
          //! A new BaseRequest must be generated when the request
          //! to retrieve the Stream is sent again.
          http.Request(
            request.method,
            request.uri,
          ),
          timeout: timeout,
        ),
      );

  @override
  Future<http.Response> post(
    UserContext userContext,
    Uri uri, {
    Map<String, String> headers = const {},
    body,
  }) async =>
      await _challengeWithRetryIfNecessary(
        _clientResolver.execute(userContext),
        (client) async => await client.post(
          uri,
          headers: headers,
          body: body,
          timeout: timeout,
        ),
      );

  @override
  Future<http.Response> delete(
    UserContext userContext,
    Uri uri,
  ) async =>
      await _challengeWithRetryIfNecessary(
        _clientResolver.execute(userContext),
        (client) async => await client.delete(uri, timeout: timeout),
      );

  @override
  Future<http.Response> put(
    UserContext userContext,
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
  }) async =>
      await _challengeWithRetryIfNecessary(
        _clientResolver.execute(userContext),
        (client) async => await client.put(
          uri,
          headers: headers,
          body: body,
          timeout: timeout,
        ),
      );

  dynamic _challengeWithRetryIfNecessary(
    final Client client,
    final dynamic Function(Client client) challenge, {
    int retryCount = 0,
  }) async {
    try {
      return await challenge.call(client);
    } on TimeoutException {
      if (_retryPolicy.shouldRetry(retryCount)) {
        await _retryPolicy.wait(retryCount);

        return await _challengeWithRetryIfNecessary(
          client,
          challenge,
          retryCount: ++retryCount,
        );
      }

      rethrow;
    }
  }
}
