import 'package:http/http.dart' as http;
import 'package:openid_client/openid_client_io.dart';
import 'package:url_launcher/url_launcher.dart';

import 'auth_manager.dart';

AuthManager getInstance() => NativeAuthManager();

class NativeAuthManager extends AuthManager {
  Credential _credential;
  TokenResponse _tokenResponse;
  UserInfo _userInfo;

  Map<String, dynamic> _jsonObjects;
  @override
  Map<String, dynamic> getJsonObjects() => _jsonObjects;

  Future<void> urlLauncher(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Future<void> authorize(
      Uri issuerUrl, String clientId, Iterable<String> scopes,
      {String clientSecret, int port}) async {
    final Issuer issuer = await Issuer.discover(issuerUrl);
    final Client client = Client(issuer, clientId, clientSecret: clientSecret);

    final Authenticator authenticator = Authenticator(
      client,
      scopes: scopes,
      port: port,
      urlLancher: urlLauncher,
    );
    _credential = await authenticator.authorize();
    _jsonObjects = _credential?.toJson();
    _tokenResponse = await _credential?.getTokenResponse();
    _userInfo = await _credential?.getUserInfo();
    await closeWebView();
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
      final http.Client httpClient = _credential.createHttpClient();
      final Uri logoutUri = _credential.generateLogoutUrl();
      final http.Response response = await httpClient.get(logoutUri);
      if (response.statusCode == 200) {
        _credential = null;
        _jsonObjects = null;
        _tokenResponse = null;
        _userInfo = null;
      } //if
    } //if
  }
}
