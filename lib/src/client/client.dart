// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:async';

// Package imports:
import 'package:http/http.dart' as http;

abstract class Client {
  Future<http.Response> get(
    Uri uri, {
    required Duration timeout,
  });

  Future<http.StreamedResponse> getStream(
    http.BaseRequest request, {
    Map<String, String> headers = const {},
    required Duration timeout,
  });

  Future<http.Response> post(
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
    required Duration timeout,
  });

  Future<http.Response> delete(
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
    required Duration timeout,
  });

  Future<http.Response> put(
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
    required Duration timeout,
  });
}
