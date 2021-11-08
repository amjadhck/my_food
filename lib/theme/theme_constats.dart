import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.amber.shade50,
  primaryColor: Colors.pink,
  appBarTheme: const AppBarTheme(color: Colors.pink),
  brightness: Brightness.light,
  textTheme: ThemeData.light().textTheme.copyWith(
        bodyText1: const TextStyle(
          color: Colors.white,
          // color: Color.fromRGBO(20, 51, 51, 1),
        ),
        bodyText2: const TextStyle(
          color: Color.fromRGBO(20, 51, 51, 1),
        ),
        caption: const TextStyle(
          fontSize: 23,
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight.bold,
        ),
      ),
);
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: ThemeData.dark().textTheme.copyWith(
        bodyText1: const TextStyle(
          color: Colors.white,
          // color: Color.fromRGBO(20, 51, 51, 1),
        ),
        bodyText2: const TextStyle(
          color: Color.fromRGBO(20, 51, 51, 1),
        ),
        caption: const TextStyle(
          fontSize: 23,
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight.bold,
        ),
      ),
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.all<Color>(Colors.white),
    trackColor: MaterialStateProperty.all<Color>(Colors.grey),
  ),
  cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(
    scaffoldBackgroundColor: Colors.grey,
  ),
);
