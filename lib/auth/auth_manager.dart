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
    return OpenIdIdentity.fromAuthorizationResponse(_response!);
  }

  Future<void> logout() async {
    final _identity = await OpenIdIdentity.load();
    final _userName = _identity!.userName;
    _logout(_identity.idToken, AUTH_DISCOVERY);
    print('User $_userName logged out successfully');
    return;
  }

  Future<void> _logout(String idToken, String discoveryUrl) async {
    final _configuration = await OpenIdConnect.getConfiguration(discoveryUrl);
    await OpenIdConnect.logout(
        request: LogoutRequest(
      idToken: idToken,
      configuration: _configuration,
    ));
  }
}
