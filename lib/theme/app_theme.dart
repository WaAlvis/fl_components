import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Colors.indigo;

  static final ThemeData themeAppLight = ThemeData.light().copyWith(
    primaryColor: primaryColor,

    //InputFormField
    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(color: primaryColor),
      iconColor: primaryColor,
      prefixIconColor: primaryColor,
      suffixIconColor: primaryColor,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    ),

    //Text Btn
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primaryColor,
      ),
    ),

    //Floating Action Btn
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: primaryColor),

    //Elevated Btn
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    ),

    //AppBar
    appBarTheme: const AppBarTheme(elevation: 0, backgroundColor: primaryColor),
  );

  //Theme Dark App
  static final ThemeData themeAppDark = ThemeData.dark().copyWith(
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(elevation: 0, backgroundColor: primaryColor),
  );
}
