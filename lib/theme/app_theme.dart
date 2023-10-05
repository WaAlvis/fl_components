import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Colors.amber;

  static final ThemeData themeAppLight = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primaryColor,
      ),
    ),
    appBarTheme: const AppBarTheme(elevation: 0, backgroundColor: primaryColor),
  );

  static final ThemeData themeAppDark = ThemeData.dark().copyWith(
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(elevation: 0, backgroundColor: primaryColor),
  );
}
