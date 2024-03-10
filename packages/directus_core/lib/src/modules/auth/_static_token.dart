import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

mixin StaticToken {
  static String? normalize(String? input) {
    if (input == null) return null;
    return input.length > 255 ? input.substring(0, 255) : input;
  }

  String? _staticToken;

  void staticToken(String? token) {
    _staticToken = normalize(token);
  }

  bool _registered = false;

  @protected
  void registerStaticTokenInterceptor(Dio client) {
    if (_registered) return;
    _registered = true;

    client.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // Attach static access token if provided
          if (_staticToken != null) {
            options.queryParameters['access_token'] = _staticToken;
          }
          return handler.next(options);
        },
      ),
    );
  }
}
