import 'auth_manager_stub.dart'
    if (dart.library.js) 'auth_manager_web.dart'
    if (dart.library.io) 'auth_manager_native.dart';

abstract class AuthManager {
  static AuthManager _instance;

  static AuthManager get instance {
    _instance ??= getInstance();
    return _instance;
  }

  Future<void> authorize(
      Uri issuerUrl, String clientId, Iterable<String> scopes,
      {String clientSecret, int port});
  bool isLoggedIn();
  Future<void> logout();

  Map<String, dynamic> getJsonObjects();
  String getRefreshToken();
  String getGivenName();
  Uri getPicture();
}
