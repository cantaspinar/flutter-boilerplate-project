import 'dart:async';
import 'package:boilerplate/stores/theme/theme_store.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constants/preferences.dart';

class SharedPreferenceHelper {
  // shared pref instance
  final Future<SharedPreferences> _sharedPreference;

  // constructor
  SharedPreferenceHelper(this._sharedPreference);

  // General Methods: ----------------------------------------------------------
  Future<String> get authToken async {
    return _sharedPreference.then((preference) {
      return preference.getString(Preferences.auth_token);
    });
  }

  Future<void> saveAuthToken(String authToken) async {
    return _sharedPreference.then((preference) {
      preference.setString(Preferences.auth_token, authToken);
    });
  }

  Future<void> removeAuthToken() async {
    return _sharedPreference.then((preference) {
      preference.remove(Preferences.auth_token);
    });
  }

  Future<bool> get isLoggedIn async {
    return _sharedPreference.then((preference) {
      return preference.getString(Preferences.auth_token) ?? false;
    });
  }

  // Theme:------------------------------------------------------
  Future<bool> get isDarkMode {
    return _sharedPreference.then((prefs) {
      return prefs.getBool(Preferences.is_dark_mode) ?? false;
    });
  }

  Future<void> changeBrightnessToDark(bool value) {
    return _sharedPreference.then((prefs) {
      return prefs.setBool(Preferences.is_dark_mode, value);
    });
  }

  Future<CustomTheme> get currentTheme {
    return _sharedPreference.then((prefs) {
      String value = prefs.getString(Preferences.current_theme);
      return EnumToString.fromString(CustomTheme.values, value) ??
          CustomTheme.orange;
    });
  }

  Future<void> changeTheme(CustomTheme value) {
    return _sharedPreference.then((prefs) {
      return prefs.setString(
          Preferences.current_theme, EnumToString.convertToString(value));
    });
  }

  // Language:---------------------------------------------------
  Future<String> get currentLanguage {
    return _sharedPreference.then((prefs) {
      return prefs.getString(Preferences.current_language);
    });
  }

  Future<void> changeLanguage(String language) {
    return _sharedPreference.then((prefs) {
      return prefs.setString(Preferences.current_language, language);
    });
  }
}
