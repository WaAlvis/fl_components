import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Colors.indigo;

  static final ThemeData themeAppLight = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primaryColor,
      ),
    ),

    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: primaryColor),
 
        


    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)))),
    appBarTheme: const AppBarTheme(elevation: 0, backgroundColor: primaryColor),
  );

  static final ThemeData themeAppDark = ThemeData.dark().copyWith(
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(elevation: 0, backgroundColor: primaryColor),
  );
}
