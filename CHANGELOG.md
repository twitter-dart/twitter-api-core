# Release Note

## v1.8.1

- Fixed internal process for `Direct Messages` service.

## v1.8.0

- Fixed report name in `UnauthorizedException`.
- The following conditions have been added as possible retry conditions.
  - When status code is `500` or `503`.
  - When `SocketException` is thrown.

## v1.7.8

- Improved `DataNotFoundException`.

## v1.7.7

- Improved `DataNotFoundException`.

## v1.7.6

- Improved `UnauthorizedException`.

## v1.7.5

- Improved `UnauthorizedException`.

## v1.7.4

- `UnauthorizedException` extended `TwitterException`.

## v1.7.3

- `TwitterUploadedException` extended `TwitterException`.

## v1.7.2

- Exposed `http.BaseResponse`.

## v1.7.1

- Added `DataNotFoundException`.

## v1.7.0

- Renamed from `TweetLanguage` to `Language`.

## v1.6.1

- Added convenient utilities in `TweetLanguage` and `Country` enumerations.

## v1.6.0

- Renamed enum from `WithheldCountry` to `Country`.

## v1.5.1

- Added enums below.
  - `WithheldCountry`
  - `TweetLanguage`

## v1.5.0

- Improved dependency structures.

## v1.4.4

- Added and exposed `json_annotation` package.

## v1.4.3

- Fixed `RateLimitExceededException`.

## v1.4.2

- `RateLimitExceededException` extended `TwitterException`.
- Exposed core packages.
- Added `JsonValue` annotation for `ISOAlpha2Country` enum.

## v1.4.1

- Added `BCP47Language` object.
- Added `ISOAlpha2Country` object.

## v1.4.0

- Removed deprecated methods in `RetryConfig`.
  - `regularIntervals`
  - `exponentialBackOff`
  - `exponentialBackOffAndJitter`

## v1.3.4

- Fixed `TwitterUploadException`.

## v1.3.3

- Fixed `TwitterUploadException`.

## v1.3.2

- Added `TwitterUploadException`.

## v1.3.1

- Added a serialization pattern.

## v1.3.0

- Added a dependency of `mime.dart` and exposed `lookupMimeType`.

## v1.2.2

- Fixed the internal process.

## v1.2.1

- Fixed the type of body in `StreamResponse` from `Future<Stream<Map<String, dynamic>>>` to `Stream<Map<String, dynamic>>`.

## v1.2.0

- Changed the response structure of stream and added `StreamResponse`. `StreamResponse` has headers and stream from response.

## v1.1.1

- Improved `ClientResolver`.

## v1.1.0

- Added `UserContext.oauth1Only`.

## v1.0.0

- Upgrade as stable version.
- Supported multi-part communication method.

## v0.0.10

- Fixed structure.

## v0.0.9

- Fixed structure.

## v0.0.8

- Fixed structure.

## v0.0.7

- Fixed structure.

## v0.0.6

- Renamed `ServiceHelper`.

## v0.0.5

- Refactored structures.

## v0.0.4

- Fixed `RetryConfig`.

## v0.0.3

- Exposed `ClientContext`.

## v0.0.2

- Fixed documentations.

## v0.0.1

- First Release
