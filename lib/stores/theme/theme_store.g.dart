// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ThemeStore on _ThemeStore, Store {
  final _$_darkModeAtom = Atom(name: '_ThemeStore._darkMode');

  @override
  bool get _darkMode {
    _$_darkModeAtom.reportRead();
    return super._darkMode;
  }

  @override
  set _darkMode(bool value) {
    _$_darkModeAtom.reportWrite(value, super._darkMode, () {
      super._darkMode = value;
    });
  }

  final _$_currentThemeAtom = Atom(name: '_ThemeStore._currentTheme');

  @override
  CustomTheme get _currentTheme {
    _$_currentThemeAtom.reportRead();
    return super._currentTheme;
  }

  @override
  set _currentTheme(CustomTheme value) {
    _$_currentThemeAtom.reportWrite(value, super._currentTheme, () {
      super._currentTheme = value;
    });
  }

  final _$changeBrightnessToDarkAsyncAction =
      AsyncAction('_ThemeStore.changeBrightnessToDark');

  @override
  Future<dynamic> changeBrightnessToDark(bool value) {
    return _$changeBrightnessToDarkAsyncAction
        .run(() => super.changeBrightnessToDark(value));
  }

  final _$changeThemeAsyncAction = AsyncAction('_ThemeStore.changeTheme');

  @override
  Future<dynamic> changeTheme(CustomTheme value) {
    return _$changeThemeAsyncAction.run(() => super.changeTheme(value));
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
