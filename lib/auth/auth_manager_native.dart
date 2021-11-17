import 'package:flutter/widgets.dart';
import 'package:openidconnect/openidconnect.dart';

import 'auth_manager.dart';

AuthManager getInstance() => WebAuthManager();

class WebAuthManager extends AuthManager {
  OpenIdConfiguration? _configuration;
  AuthorizationResponse? _identity;
  bool usePopup = true;

  @override
  Future<void> authorize(BuildContext context, String discoveryUrl,
      String clientId, Iterable<String> scopes,
      {String? clientSecret, required String redirectUrl}) async {
    _configuration = await OpenIdConnect.getConfiguration(discoveryUrl);

    _identity = await OpenIdConnect.authorizeInteractive(
        context: context,
        title: 'Login',
        request: await InteractiveAuthorizationRequest.create(
          clientId: clientId,
          clientSecret: clientSecret,
          redirectUrl: redirectUrl,
          scopes: scopes,
          configuration: _configuration!,
          autoRefresh: false,
          useWebPopup: usePopup,
        ));
  }

  @override
  String? getRefreshToken() {
    return _identity!.refreshToken;
  }

  @override
  bool isLoggedIn() {
    return _identity != null;
  }

  @override
  String getGivenName() {
    return _identity!.additionalProperties!['givenName'];
  }

  @override
  Uri getPicture() {
    return _identity!.additionalProperties!['picture'];
  }

  @override
  Future<void> logout() async {
    if (isLoggedIn()) {
      await OpenIdConnect.logout(
          request: LogoutRequest(
        idToken: _identity!.idToken,
        configuration: _configuration!,
      ));
    } //if
  }

  @override
  Map<String, dynamic>? getJsonObjects() {
    return _identity!.additionalProperties;
  }
}
