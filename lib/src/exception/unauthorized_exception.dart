// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

/// This exception is thrown to indicate that the specified access token was not
/// authorized by the server as a result of its use in the request.
class UnauthorizedException implements Exception {
  /// Returns the new instance of [UnauthorizedException].
  UnauthorizedException(this.message);

  /// The error message
  final String message;

  @override
  String toString() => 'UnauthorizedException: $message';
}
