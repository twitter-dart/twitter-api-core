// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:io';

// Package imports:
import 'package:http/http.dart';

/// This class indicates that an exception occurred during a file upload to
/// Twitter.
class TwitterUploadException implements Exception {
  /// Returns the new instance of [TwitterUploadException].
  const TwitterUploadException(
    this.file,
    this.message, [
    this.response,
  ]);

  /// The file in which the exception occurred.
  final File file;

  /// The response
  final Response? response;

  /// The error message
  final String message;

  @override
  String toString() {
    final buffer = StringBuffer()
      ..writeln('TwitterUploadException: $message\n')
      ..writeln('  ✅ File Path:')
      ..writeln('   ${file.path}\n');

    if (response != null) {
      buffer
        ..writeln('  ✅ Status Code:')
        ..writeln('   ${response!.statusCode}\n')
        ..writeln('  ✅ Request:')
        ..writeln('   ${response!.request}\n')
        ..writeln('  ✅ Headers:')
        ..writeln('   ${response!.headers}\n')
        ..writeln('  ✅ Body:')
        ..writeln('   ${response!.body}\n');
    }

    buffer.writeln('  Please create an Issue if you have a question '
        'or suggestion for this exception.');

    return buffer.toString();
  }
}
