// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:http/http.dart' as http;

// Project imports:
import 'twitter_exception.dart';

/// This exception indicates that the number of requests for a particular
/// endpoint exceeds the rate limit defined by the Twitter API.
///
/// Also, if this exception is thrown, it indicates that requests for a
/// particular endpoint will be restricted for a certain amount of time or more.
///
/// You can see more information about rate limits [here](https://developer.twitter.com/en/docs/twitter-api/rate-limits).
class RateLimitExceededException extends TwitterException {
  /// Returns the new instance of [RateLimitExceededException].
  RateLimitExceededException(
    final String message,
    final http.Response response,
  ) : super(message, response, response.body);

  @override
  String toString() {
    final buffer = StringBuffer()
      ..writeln('RateLimitExceededException: $message\n')
      ..writeln('  ✅ Status Code:')
      ..writeln('   ${response.statusCode}\n')
      ..writeln('  ✅ Request:')
      ..writeln('   ${response.request}\n')
      ..writeln('  ✅ Headers:')
      ..writeln('   ${response.headers}\n')
      ..writeln('  ✅ Body:')
      ..writeln('   $body\n');

    buffer.writeln('  Please create an Issue if you have a question '
        'or suggestion for this exception.');

    return buffer.toString();
  }
}
