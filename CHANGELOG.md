# Release Note

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
