import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeApp {
  static const primaryColor = Color(0xffff6347);

  final themeLight = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,

    // AppBar
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
          color: primaryColor,
          fontSize: 24,
          // height: 36,
          fontWeight: FontWeight.w700),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: primaryColor,
      ),
    ),

    // TabBar
    tabBarTheme: const TabBarTheme(
      labelColor: primaryColor,
      labelStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelColor: Color(0xff626262),
      unselectedLabelStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    ),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.all(Colors.grey),
        trackColor: MaterialStateProperty.all(Colors.transparent),
        materialTapTargetSize: MaterialTapTargetSize.padded,
        splashRadius: 40),
  );

  final themeDark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
          color: primaryColor, fontSize: 24, fontWeight: FontWeight.w700),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: primaryColor,
      ),
    ),
    tabBarTheme: const TabBarTheme(
      labelColor: primaryColor,
      labelStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelColor: Color(0xff626262),
      unselectedLabelStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    ),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.all(Colors.grey),
        trackColor: MaterialStateProperty.all(Colors.transparent),
        overlayColor: MaterialStateProperty.all(Colors.pink)),
  );
}
