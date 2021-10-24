import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:openid_client/openid_client_browser.dart';

import 'auth_manager.dart';

AuthManager getInstance() => WebAuthManager();

class WebAuthManager extends AuthManager {
  Issuer _issuer;
  Client _client;
  Authenticator _authenticator;

  Credential _credential;
  TokenResponse _tokenResponse;
  UserInfo _userInfo;

  Map<String, dynamic> _jsonObjects;
  @override
  Map<String, dynamic> getJsonObjects() => _jsonObjects;

  @override
  Future<void> authorize(
      Uri issuerUrl, String clientId, Iterable<String> scopes,
      {String clientSecret, int port}) async {
    _issuer = await Issuer.discover(issuerUrl);
    _client = Client(_issuer, clientId, clientSecret: clientSecret);
    _authenticator = Authenticator(_client, scopes: scopes);

    // get the credential
    _credential = await _authenticator.credential;
    if (_credential == null) {
      await _authenticator.authorize(); // this will redirect the browser

      debugPrint('AFTER LOGIN!!');
      _credential = await _authenticator.credential;
      debugPrint('AFTER LOGIN!! 1');
      _jsonObjects = _credential?.toJson();
      debugPrint('AFTER LOGIN!! 2');
      _tokenResponse = await _credential?.getTokenResponse();
      debugPrint('AFTER LOGIN!! 3');
      _userInfo = await _credential?.getUserInfo();
      debugPrint('AFTER LOGIN!! 99');
    } //if
  }

  @override
  String getRefreshToken() {
    return _tokenResponse?.refreshToken;
  }

  @override
  bool isLoggedIn() {
    return _credential != null;
  }

  @override
  String getGivenName() {
    return _userInfo?.givenName;
  }

  @override
  Uri getPicture() {
    return _userInfo?.picture;
  }

  @override
  Future<void> logout() async {
    if (isLoggedIn()) {
      _authenticator.logout();
      _credential = null;
      _jsonObjects = null;
      _tokenResponse = null;
      _userInfo = null;
    } //if
  }
}
