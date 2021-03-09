import 'package:flutter/material.dart';


class AppTheme {
  static const double avatarWidth = 28.0;
  static const double avatarHeight = 28.0;

  static const double carouselHeight = 200.0;

  static const backgroundColor = Color.fromRGBO(5, 6, 31, 1);
}

ThemeData appTheme = ThemeData(
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppTheme.backgroundColor,
    selectedIconTheme: IconThemeData(size: 30),
    unselectedIconTheme: IconThemeData(size: 30),
  ),

  scaffoldBackgroundColor: AppTheme.backgroundColor,

  fontFamily: 'Inter',

  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),
);

