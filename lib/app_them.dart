import 'package:flutter/material.dart';

class AppThem {
  static const LightPrimay = Color(0xffB7935F);
  static const darkPrimay = Color(0xff141A2E);
  static const white = Color(0xffFFFFFF);
  static const black = Color(0xff242424);
  static const gold = Color(0xffFACC1D);

  static ThemeData lightThem = ThemeData(
    primaryColor: LightPrimay,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle:
          TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: black),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: LightPrimay,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: black,
      unselectedItemColor: white,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        fontSize: 25,
      ),
    ),
  );

  static ThemeData darkThem = ThemeData(
    primaryColor: darkPrimay,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle:
          TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: black),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: darkPrimay,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: white,
      unselectedItemColor: gold,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
        headlineLarge:
            TextStyle(fontSize: 25, color: black, fontWeight: FontWeight.w900),
        bodyMedium:
            TextStyle(fontSize: 25, color: white, fontWeight: FontWeight.bold)),
  );
}
