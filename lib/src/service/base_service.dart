// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:convert' as converter;

// Package imports:
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

// Project imports:
import '../client/client_context.dart';
import '../client/stream_request.dart';
import '../client/user_context.dart';
import '../util/json_util.dart';
import '../util/param_util.dart';

abstract class Service {
  Future<http.Response> get(UserContext userContext, String unencodedPath);

  Future<Stream<Map<String, dynamic>>> getStream(
    final UserContext userContext,
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
  });

  Future<http.Response> post(
    UserContext userContext,
    String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
    Map<String, String> body = const {},
  });

  Future<http.Response> delete(
    UserContext userContext,
    String unencodedPath,
  );

  Future<http.Response> put(
    UserContext userContext,
    String unencodedPath, {
    Map<String, String> body = const {},
  });
}

abstract class BaseService implements Service {
  /// Returns the new instance of [BaseService].
  const BaseService({
    required String authority,
    required ClientContext context,
  })  : _authority = authority,
        _context = context;

  /// The base url
  final String _authority;

  /// The twitter client
  final ClientContext _context;

  @override
  Future<http.Response> get(
    final UserContext userContext,
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
    Response Function(Response response)? validate,
  }) async {
    final response = await _context.get(
      userContext,
      Uri.https(
        _authority,
        unencodedPath,
        convertQueryParameters(queryParameters),
      ),
    );

    return validate != null ? validate(response) : response;
  }

  @override
  Future<Stream<Map<String, dynamic>>> getStream(
    final UserContext userContext,
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
    Map<String, dynamic> Function(
            StreamedResponse streamedResponse, String event)?
        validate,
  }) async {
    final streamedResponse = await _context.getStream(
      userContext,
      StreamRequest(
        Uri.https(
          _authority,
          unencodedPath,
          convertQueryParameters(queryParameters),
        ),
      ),
    );

    return streamedResponse.stream.transform(converter.utf8.decoder).map(
        (event) => validate != null
            ? validate(streamedResponse, event)
            : tryJsonDecode(streamedResponse, event));
  }

  @override
  Future<http.Response> post(
    final UserContext userContext,
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
    dynamic body = const {},
    Response Function(Response response)? validate,
  }) async {
    final response = await _context.post(
      userContext,
      Uri.https(
        _authority,
        unencodedPath,
        convertQueryParameters(queryParameters),
      ),
      headers: {'Content-type': 'application/json'},
      body: converter.jsonEncode(removeNullValues(body)),
    );

    return validate != null ? validate(response) : response;
  }

  @override
  Future<http.Response> delete(
    final UserContext userContext,
    final String unencodedPath, {
    Response Function(Response response)? validate,
  }) async {
    final response = await _context.delete(
      userContext,
      Uri.https(_authority, unencodedPath),
    );

    return validate != null ? validate(response) : response;
  }

  @override
  Future<http.Response> put(
    final UserContext userContext,
    final String unencodedPath, {
    dynamic body = const {},
    Response Function(Response response)? validate,
  }) async {
    final response = await _context.put(
      userContext,
      Uri.https(_authority, unencodedPath),
      headers: {'Content-type': 'application/json'},
      body: converter.jsonEncode(removeNullValues(body)),
    );

    return validate != null ? validate(response) : response;
  }
}
