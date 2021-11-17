import 'dart:async';

import 'package:flutter/material.dart';
import 'app_cache.dart';
import '../auth/auth_manager.dart';

class FooderlichTab {
  static const int explore = 0;
  static const int recipes = 1;
  static const int toBuy = 2;
}

class AppStateManager extends ChangeNotifier {
  final AuthManager _authManager = AuthManager.instance;
  bool _initialized = false;
  bool _loggedIn = false;
  bool _onboardingComplete = false;
  int _selectedTab = FooderlichTab.explore;
  final _appCache = AppCache();

  bool get isInitialized => _initialized;
  bool get isLoggedIn => _loggedIn;
  bool get isOnboardingComplete => _onboardingComplete;
  int get getSelectedTab => _selectedTab;

  void initializeApp() async {
    _loggedIn = await _appCache.isUserLoggedIn();
    _onboardingComplete = await _appCache.didCompleteOnboarding();

    Timer(
      const Duration(milliseconds: 2000),
      () {
        _initialized = true;
        notifyListeners();
      },
    );
  }

  void login(BuildContext _context) async {
    _authManager.login(_context);
    print('DDDD after popup login');
    _loggedIn = _authManager.isLoggedIn();
    await _appCache.cacheUser();
    notifyListeners();
  }

  void completeOnboarding() async {
    _onboardingComplete = true;
    await _appCache.completeOnboarding();
    notifyListeners();
  }

  void goToTab(index) {
    _selectedTab = index;
    notifyListeners();
  }

  void goToRecipes() {
    _selectedTab = FooderlichTab.recipes;
    notifyListeners();
  }

  void logout() async {
    _authManager.logout();
    _initialized = false;
    _selectedTab = 0;
    await _appCache.invalidate();

    initializeApp();
    notifyListeners();
  }
}
