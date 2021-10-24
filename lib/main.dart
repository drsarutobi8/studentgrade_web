/// -----------------------------------
///          External Packages
/// -----------------------------------

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'auth_manager.dart';

const FlutterSecureStorage secureStorage = FlutterSecureStorage();

/// -----------------------------------
///           Auth Variables
/// -----------------------------------

const String AUTH_PROTOCOL = 'https';
const String AUTH_DOMAIN = 'auth.figker.com';
const int AUTH_PORT = 8443;
const String AUTH_REALM = 'studentgrade-abc';
const String AUTH_ISSUER =
    '$AUTH_PROTOCOL://$AUTH_DOMAIN:$AUTH_PORT/auth/realms/$AUTH_REALM';

const String AUTH_CLIENT_ID = 'studentgrade-service';
const String AUTH_CLIENT_SECRET = '2f03fc47-2981-4cad-9ba1-548977226b48';
const int REDIRECT_PORT = 4200;
const List<String> AUTH_SCOPES = <String>['openid', 'profile'];

/// -----------------------------------
///           Profile Widget
/// -----------------------------------

class Profile extends StatelessWidget {
  final Future<void> Function() logoutAction;
  final String name;
  final String picture;

  const Profile(this.logoutAction, this.name, this.picture, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 4),
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(picture ?? ''),
            ),
          ),
        ),
        const SizedBox(height: 24),
        Text('Name: $name'),
        const SizedBox(height: 48),
        ElevatedButton(
          onPressed: () async {
            await logoutAction();
          },
          child: const Text('Logout'),
        ),
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('name', name));
    properties.add(StringProperty('picture', picture));
    properties.add(ObjectFlagProperty<Future<void> Function()>.has(
        'logoutAction', logoutAction));
  }
}

/// -----------------------------------
///            Login Widget
/// -----------------------------------

class Login extends StatelessWidget {
  final Future<void> Function() loginAction;
  final String loginError;

  const Login(this.loginAction, this.loginError, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: () async {
            await loginAction();
          },
          child: const Text('Login'),
        ),
        Text(loginError ?? ''),
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('loginError', loginError));
    properties.add(ObjectFlagProperty<Future<void> Function()>.has(
        'loginAction', loginAction));
  }
}

/// -----------------------------------
///                 App
/// -----------------------------------

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

/// -----------------------------------
///              App State
/// -----------------------------------

class _MyAppState extends State<MyApp> {
  final AuthManager _authManager = AuthManager.instance;

  bool _isBusy = false;
  bool _isLoggedIn = false;
  String _errorMessage;
  String _name;
  String _picture;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Keycloak Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Keycloak Demo'),
        ),
        body: Center(
          child: _isBusy
              ? const CircularProgressIndicator()
              : _isLoggedIn
                  ? Profile(logoutAction, _name, _picture)
                  : Login(loginAction, _errorMessage),
        ),
      ),
    );
  }

  Future<void> loginAction() async {
    setState(() {
      _isBusy = true;
      _errorMessage = '';
    });

    try {
      await _authManager.authorize(
          Uri.parse(AUTH_ISSUER), AUTH_CLIENT_ID, AUTH_SCOPES,
          clientSecret: AUTH_CLIENT_SECRET, port: REDIRECT_PORT);
      await secureStorage.write(
          key: 'refresh_token', value: _authManager.getRefreshToken());

      setState(() {
        _isBusy = false;
        _isLoggedIn = _authManager.isLoggedIn();
        _name = _authManager.getGivenName();
        _picture = _authManager.getPicture() ?? '';
      });
    } on Exception catch (e, s) {
      debugPrint('login error: $e - stack: $s');

      setState(() {
        _isBusy = false;
        _isLoggedIn = false;
        _errorMessage = e.toString();
      });
    }
  }

  Future<void> logoutAction() async {
    await secureStorage.delete(key: 'refresh_token');
    await _authManager.logout();
    if (!_authManager.isLoggedIn()) {
      setState(() {
        _isBusy = false;
        _isLoggedIn = _authManager.isLoggedIn();
      });
      debugPrint('logout successfully!!');
    } else {
      throw Exception('Failed to get user details');
    }
  }

  @override
  void initState() {
    initAction();
    super.initState();
  }

  Future<void> initAction() async {
    if (!(await secureStorage.containsKey(key: 'refresh_token')) ||
        _authManager == null ||
        !_authManager.isLoggedIn()) {
      return;
    }

    setState(() {
      _isBusy = true;
    });

    try {
      await secureStorage.write(
          key: 'refresh_token', value: _authManager.getRefreshToken());

      setState(() {
        _isBusy = false;
        _isLoggedIn = true;
        _name = _authManager.getGivenName();
        _picture = _authManager.getPicture()?.path;
      });
    } on Exception catch (e, s) {
      debugPrint('error on refresh token: $e - stack: $s');
      await logoutAction();
    } //catch
  }
}
