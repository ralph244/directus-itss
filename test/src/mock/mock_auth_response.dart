import 'package:directus/src/modules/auth/_auth_response.dart';

AuthResponse getAuthRespones() {
  return AuthResponse(
    accessToken: 'accessToken',
    accessTokenExpiresAt: DateTime.now(),
    accessTokenTtlMs: 1000,
    refreshToken: 'refreshToken',
  );
}
