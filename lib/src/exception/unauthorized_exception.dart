// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../../twitter_api_core.dart';

/// This exception is thrown to indicate that the specified access token was not
/// authorized by the server as a result of its use in the request.
class UnauthorizedException extends TwitterException {
  /// Returns the new instance of [UnauthorizedException].
  UnauthorizedException(final String message)
      : super(message, Response('', 401));

  @override
  String toString() => 'UnauthorizedException: $message';
}
