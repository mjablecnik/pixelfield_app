import 'package:flutter/material.dart';


class AppTheme {
  static const backgroundColor = Color.fromRGBO(5, 6, 31, 1);

  static const EdgeInsets dashboardWidgetPadding = EdgeInsets.symmetric(vertical: 32.0);

  static const double avatarWidth = 28.0;
  static const double avatarHeight = 28.0;

  static const int carouselInterval = 5;
  static const int carouselAnimationDuration = 800;
  static const double carouselHeight = 200.0;
  static const double carouselIndicatorCornerRadius = 0.0;
  static const double carouselIndicatorSpace = 3.0;
  static const double carouselIndicatorBottomPosition = AppTheme.carouselHeight - 40;

  static const double cardListHeight = 130.0;
  static const double cardListSpace = 20.0;
  static const double cardItemWidth = 213.0;
  static const double cardItemBorderRadius = 20.0;
  static const double cardItemTextWidth = 130.0;
  static const EdgeInsets cardItemTextPadding = EdgeInsets.only(left: 20.0, top: 40.0);
  static const TextStyle cardItemTextAuthorStyle = TextStyle(color: Colors.white, fontSize: 13);
  static const TextStyle cardItemTextTitleStyle = TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17);

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

