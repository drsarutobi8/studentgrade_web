import 'package:flutter/material.dart';
import 'package:openidconnect/openidconnect.dart';

import 'models.dart';

class ProfileManager extends ChangeNotifier {
  OpenIdIdentity? _identity;

  User get getUser => User(
        firstName: _identity!.givenName ?? '',
        lastName: _identity!.familyName ?? '',
        role: 'Flutterista',
        profileImageUrl: 'assets/profile_pics/person_stef.jpeg',
        points: 100,
        darkMode: _darkMode,
      );

  bool get didSelectUser => _didSelectUser;
  bool get didTapOnRaywenderlich => _tapOnRaywenderlich;
  bool get darkMode => _darkMode;

  var _didSelectUser = false;
  var _tapOnRaywenderlich = false;
  var _darkMode = false;

  void set darkMode(bool darkMode) {
    _darkMode = darkMode;
    notifyListeners();
  }

  void tapOnRaywenderlich(bool selected) {
    _tapOnRaywenderlich = selected;
    notifyListeners();
  }

  void tapOnProfile(bool selected) async {
    if (selected) {
      _identity = await OpenIdIdentity.load();
    } else {
      _identity = null;
    } //else

    _didSelectUser = selected;
    notifyListeners();
  }
}
