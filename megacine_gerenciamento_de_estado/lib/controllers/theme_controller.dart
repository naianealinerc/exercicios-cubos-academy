import 'package:flutter/material.dart';

class ControllerThemeMode {
  ValueNotifier<ThemeMode> themeMode = ValueNotifier(ThemeMode.light);
  bool isDark = false;

  changeTheme() {
    isDark = !isDark;
    themeMode.value = isDark ? ThemeMode.dark : ThemeMode.light;
  }
}
