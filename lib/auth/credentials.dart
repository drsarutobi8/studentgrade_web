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
const bool AUTH_USE_POPUP = true;
