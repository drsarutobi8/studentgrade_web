import 'package:flutter/widgets.dart';

import 'auth_manager_stub.dart'
    if (dart.library.js) 'auth_manager_web.dart'
    if (dart.library.io) 'auth_manager_native.dart';

/// -----------------------------------
///           Auth Variables
/// -----------------------------------
const String AUTH_PROTOCOL = 'https';
const String AUTH_DOMAIN = 'auth.figker.com';
const int AUTH_PORT = 8443;
const String AUTH_REALM = 'studentgrade-abc';
const String AUTH_ISSUER =
    '$AUTH_PROTOCOL://$AUTH_DOMAIN:$AUTH_PORT/auth/realms/$AUTH_REALM';
const String AUTH_DISCOVERY = '$AUTH_ISSUER/.well-known/openid-configuration';
const String AUTH_CLIENT_ID = 'studentgrade-service';
const String AUTH_CLIENT_SECRET = '2f03fc47-2981-4cad-9ba1-548977226b48';
const int REDIRECT_PORT = 4200;
const String REDIRECT_URL = 'http://localhost:$REDIRECT_PORT/callback.html';
const List<String> AUTH_SCOPES = <String>['openid', 'profile'];

abstract class AuthManager {
  static AuthManager _instance = getInstance();

  static AuthManager get instance {
    return _instance;
  }

  Future<void> authorize(BuildContext context, String discoveryUrl,
      String clientId, Iterable<String> scopes,
      {String? clientSecret, required String redirectUrl});
  Future<void> login(BuildContext context) {
    return authorize(context, AUTH_DISCOVERY, AUTH_CLIENT_ID, AUTH_SCOPES,
        redirectUrl: REDIRECT_URL);
  }

  bool isLoggedIn();
  Future<void> logout();

  Map<String, dynamic>? getJsonObjects();
  String? getRefreshToken();
  String getGivenName();
  Uri getPicture();
}
