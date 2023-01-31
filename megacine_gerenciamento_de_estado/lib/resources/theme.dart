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
          fontWeight: FontWeight.w900,
          fontFamily: "Poppins"),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: primaryColor,
      ),
    ),

    // TabBar
    tabBarTheme: const TabBarTheme(
      labelColor: primaryColor,
      labelStyle: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w600, fontFamily: "Poppins"),
      unselectedLabelColor: Color(0xff626262),
      unselectedLabelStyle: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w600, fontFamily: "Poppins"),
    ),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.all(Colors.grey),
        trackColor: MaterialStateProperty.all(Colors.transparent),
        materialTapTargetSize: MaterialTapTargetSize.padded,
        splashRadius: 40),

    // TextTheme
    textTheme: TextTheme(
        bodyText1: const TextStyle(
            color: Color(0xff1b1b1b),
            fontSize: 16,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w600,
            fontFamily: "Poppins")),
  );

  final themeDark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,

    // AppBar
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
          color: primaryColor,
          fontSize: 24,
          fontWeight: FontWeight.w700,
          fontFamily: "Poppins"),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: primaryColor,
      ),
    ),

    // TabBar
    tabBarTheme: const TabBarTheme(
      labelColor: primaryColor,
      labelStyle: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w600, fontFamily: "Poppins"),
      unselectedLabelColor: Color(0xff626262),
      unselectedLabelStyle: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w600, fontFamily: "Poppins"),
    ),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.all(Colors.grey),
        trackColor: MaterialStateProperty.all(Colors.transparent),
        overlayColor: MaterialStateProperty.all(Colors.pink)),

    // TextTheme
    textTheme: TextTheme(
        bodyText1: const TextStyle(
            color: Color(0xfff1f1f1),
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
            fontFamily: "Poppins")),
  );
}
