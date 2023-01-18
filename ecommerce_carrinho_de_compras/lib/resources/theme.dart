import 'package:flutter/material.dart';

class ThemeApp {
  static ThemeData themeLight = ThemeData(
    primaryColorLight: const Color(0xffe5007b),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xffe5007b),
      toolbarHeight: 17,
    ),
    textTheme: TextTheme(
      bodyLarge: const TextStyle(
          fontSize: 24, color: Color(0xffe5007b), fontWeight: FontWeight.w800),
      bodyMedium: const TextStyle(
          fontSize: 12, color: Colors.black87, fontWeight: FontWeight.w700),
      bodySmall: TextStyle(
          fontSize: 12, color: Colors.grey[600], fontWeight: FontWeight.w700),
      
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Color(0xffe5007b),
        unselectedItemColor: Colors.grey,
        backgroundColor: Color(0xfff2f4f7)),
  );
}
