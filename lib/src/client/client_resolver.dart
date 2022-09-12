// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../../twitter_api_core.dart';
import 'client.dart';
import 'oauth1_client.dart';
import 'oauth2_client.dart';

abstract class ClientResolver {
  /// Returns the new instance of [ClientResolver].
  factory ClientResolver(
    final OAuth1Client? oauth1Client,
    final OAuth2Client oauth2Client,
  ) =>
      _ClientResolver(
        oauth1Client,
        oauth2Client,
      );

  /// Returns resolved http client.
  Client execute(UserContext userContext);
}

class _ClientResolver implements ClientResolver {
  /// Returns the new instance of [_ClientResolver].
  const _ClientResolver(this.oauth1Client, this.oauth2Client);

  /// The OAuth 1.0a client
  final OAuth1Client? oauth1Client;

  /// The OAuth 2.0 client
  final OAuth2Client oauth2Client;

  @override
  Client execute(UserContext userContext) {
    //! If an authentication token is set, the OAuth 1.0a method is given
    //! priority.
    if (_shouldUseOauth1Client(userContext)) {
      if (oauth1Client == null) {
        throw UnauthorizedException(
            'Required tokens were not passed for an endpoint that '
            'requires OAuth 1.0a.');
      }

      return oauth1Client!;
    }

    return oauth2Client;
  }

  /// Returns true if this context should use OAuth 1.0a client, otherwise
  /// false.
  bool _shouldUseOauth1Client(final UserContext userContext) {
    if (userContext == UserContext.oauth1Only) {
      return true;
    }

    return userContext == UserContext.oauth2OrOAuth1 && oauth1Client != null;
  }
}
