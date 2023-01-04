

import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Colors.amber;
  static const Color colorButtons = Colors.pink;
  static final ThemeData lightTheme = ThemeData.dark().copyWith(
        primaryColor: primary,
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 0, 0, 0),
          elevation: 0
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: primary),
        )
      );

}