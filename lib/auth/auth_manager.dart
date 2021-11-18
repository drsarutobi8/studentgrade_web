import 'package:flutter/widgets.dart';
import 'package:openidconnect/openidconnect.dart';

import 'credentials.dart';

class AuthManager {
  static final AuthManager _instance = AuthManager();
  static AuthManager get instance => _instance;

  Future<OpenIdIdentity?> login(BuildContext context) {
    return _login(context, AUTH_DISCOVERY, AUTH_CLIENT_ID, AUTH_SCOPES,
        redirectUrl: REDIRECT_URL);
  }

  Future<OpenIdIdentity?> _login(BuildContext context, String discoveryUrl,
      String clientId, Iterable<String> scopes,
      {String? clientSecret, required String redirectUrl}) async {
    final _configuration = await OpenIdConnect.getConfiguration(discoveryUrl);
    final _response = await OpenIdConnect.authorizeInteractive(
        context: context,
        title: 'Login',
        request: await InteractiveAuthorizationRequest.create(
          clientId: clientId,
          clientSecret: clientSecret,
          redirectUrl: redirectUrl,
          scopes: scopes,
          configuration: _configuration,
          autoRefresh: true,
          useWebPopup: AUTH_USE_POPUP,
        ));
    print('web authorize 99 responseIsNotNull=${_response != null}');
    return OpenIdIdentity.fromAuthorizationResponse(_response!);
  }

  Future<void> logout(String idToken) async {
    print('starting logout');
    return _logout(idToken, AUTH_DISCOVERY);
  }

  Future<void> _logout(String idToken, String discoveryUrl) async {
    print('starting logout');
    final _configuration = await OpenIdConnect.getConfiguration(discoveryUrl);
    await OpenIdConnect.logout(
        request: LogoutRequest(
      idToken: idToken,
      configuration: _configuration,
    ));
  }
}
