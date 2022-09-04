// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

/// This exception indicates that the number of requests for a particular
/// endpoint exceeds the rate limit defined by the Twitter API.
///
/// Also, if this exception is thrown, it indicates that requests for a
/// particular endpoint will be restricted for a certain amount of time or more.
///
/// You can see more information about rate limits [here](https://developer.twitter.com/en/docs/twitter-api/rate-limits).
class RateLimitExceededException implements Exception {
  /// Returns the new instance of [RateLimitExceededException].
  RateLimitExceededException(this.message);

  /// The error message
  final String message;

  @override
  String toString() => 'RateLimitExceededException: $message';
}
