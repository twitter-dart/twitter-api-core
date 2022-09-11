// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_core/src/exception/twitter_exception.dart';
import 'package:twitter_api_core/src/util/oauth_utils.dart';

void main() {
  //! Since it is difficult to add the case where the access token can be
  //! obtained as a unit test, only the case where an exception occurs should be
  //! tested.
  test('throws TwitterException', () {
    expect(
      () async => await OAuthUtils.generateAppOnlyBearerToken(
        consumerKey: '',
        consumerSecret: '',
      ),
      throwsA(isA<TwitterException>()),
    );
  });
}
