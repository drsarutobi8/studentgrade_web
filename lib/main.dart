/// -----------------------------------
///          External Packages
/// -----------------------------------

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'auth/auth_manager.dart';
import 'model/student.dart';
import 'model/student_info.dart';

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
  final StudentRouterDelegate _routerDelegate = StudentRouterDelegate();
  final StudentRouteInformationParser _routeInformationParser =
      StudentRouteInformationParser();

  bool _isBusy = false;
  bool _isLoggedIn = false;
  String _errorMessage;
  String _name;
  String _picture;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Keycloak Demo',
      routerDelegate: _routerDelegate,
      routeInformationParser: _routeInformationParser,
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

class StudentRouteInformationParser
    extends RouteInformationParser<StudentRoutePath> {
  @override
  Future<StudentRoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final Uri uri = Uri.parse(routeInformation.location);

    if (uri.pathSegments.length >= 2) {
      final String remaining = uri.pathSegments[1];
      return StudentRoutePath.details(int.tryParse(remaining));
    } else {
      return StudentRoutePath.home();
    }
  }

  @override
  RouteInformation restoreRouteInformation(StudentRoutePath configuration) {
    if (configuration.isHomePage) {
      return const RouteInformation(location: '/');
    } else {
      if (configuration.isDetailsPage) {
        return RouteInformation(location: '/student/${configuration.id}');
      } //if
    } //else
    return null;
  }
}

class StudentRouterDelegate extends RouterDelegate<StudentRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<StudentRoutePath> {
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  Student _selectedStudent;

  List<Student> students = [
    Student('abc', 'st1', 'John Doe', 15, Gender.MALE),
    Student('abc', 'st2', 'Jane Doe', 16, Gender.FEMALE),
    Student('abc', 'st3', 'Jimmy Doe', 15, Gender.MALE),
    Student('abc', 'st4', 'Jade Doe', 14, Gender.FEMALE),
  ];

  StudentRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  @override
  StudentRoutePath get currentConfiguration => _selectedStudent == null
      ? StudentRoutePath.home()
      : StudentRoutePath.details(students.indexOf(_selectedStudent));

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      transitionDelegate: NoAnimationTransitionDelegate(),
      pages: [
        MaterialPage(
          key: const ValueKey('StudentsListPage'),
          child: StudentsListScreen(
            students: students,
            onTapped: _handleStudentTapped,
          ),
        ),
        if (_selectedStudent != null)
          StudentDetailsPage(student: _selectedStudent)
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }

        // Update the list of pages by setting _selectedStudent to null
        _selectedStudent = null;
        notifyListeners();

        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(StudentRoutePath path) async {
    if (path.isDetailsPage) {
      _selectedStudent = students[path.id];
    }
  }

  void _handleStudentTapped(Student student) {
    _selectedStudent = student;
    notifyListeners();
  }
}

class StudentDetailsPage extends Page {
  final Student student;

  StudentDetailsPage({
    this.student,
  }) : super(key: ValueKey(student));

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        return StudentDetailsScreen(student: student);
      },
    );
  }
}

class StudentRoutePath {
  final int id;

  StudentRoutePath.home() : id = null;

  StudentRoutePath.details(this.id);

  bool get isHomePage => id == null;

  bool get isDetailsPage => id != null;
}

class StudentsListScreen extends StatelessWidget {
  final List<Student> students;
  final ValueChanged<Student> onTapped;

  StudentsListScreen({
    @required this.students,
    @required this.onTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          for (var student in students)
            ListTile(
              title: Text(student.name),
              subtitle: Text(student.gender.toString()),
              onTap: () => onTapped(student),
            )
        ],
      ),
    );
  }
}

class StudentDetailsScreen extends StatelessWidget {
  final Student student;

  StudentDetailsScreen({
    @required this.student,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (student != null) ...[
              Text(student.name, style: Theme.of(context).textTheme.headline6),
              Text(student.gender.toString(),
                  style: Theme.of(context).textTheme.subtitle1),
            ],
          ],
        ),
      ),
    );
  }
}

class NoAnimationTransitionDelegate extends TransitionDelegate<void> {
  @override
  Iterable<RouteTransitionRecord> resolve({
    List<RouteTransitionRecord> newPageRouteHistory,
    Map<RouteTransitionRecord, RouteTransitionRecord>
        locationToExitingPageRoute,
    Map<RouteTransitionRecord, List<RouteTransitionRecord>>
        pageRouteToPagelessRoutes,
  }) {
    final List<RouteTransitionRecord> results = <RouteTransitionRecord>[];

    for (final RouteTransitionRecord pageRoute in newPageRouteHistory) {
      if (pageRoute.isWaitingForEnteringDecision) {
        pageRoute.markForAdd();
      }
      results.add(pageRoute);
    }

    for (final RouteTransitionRecord exitingPageRoute
        in locationToExitingPageRoute.values) {
      if (exitingPageRoute.isWaitingForExitingDecision) {
        exitingPageRoute.markForRemove();
        final List<RouteTransitionRecord> pagelessRoutes =
            pageRouteToPagelessRoutes[exitingPageRoute];
        if (pagelessRoutes != null) {
          for (final RouteTransitionRecord pagelessRoute in pagelessRoutes) {
            pagelessRoute.markForRemove();
          }
        }
      }

      results.add(exitingPageRoute);
    }
    return results;
  }
}
