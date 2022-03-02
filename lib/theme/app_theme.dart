import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.deepPurple;
  static final ThemeData  lightTheme = ThemeData.light().copyWith(
    //Color primario
    primaryColor: primary,
    //AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),
    //TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary:primary)
    ),
    //FloatingActionButtons
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5
    ),
    //ElevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),
        elevation: 5
      )
    )
  );

  /*static const Color primaryDark = Colors.black;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //Color primario
    primaryColor: primaryDark,
    //AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primaryDark,
      elevation: 0
    )
  );*/
}