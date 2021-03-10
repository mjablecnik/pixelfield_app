import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AppTheme {
  static const backgroundColor = Color.fromRGBO(5, 6, 31, 1);

  static const EdgeInsets dashboardWidgetSpacing = EdgeInsets.symmetric(vertical: 32.0);
  static const EdgeInsets dashboadDividerPadding = EdgeInsets.symmetric(horizontal: 24);

  static const Divider divider = Divider(color: Color.fromRGBO(50, 50, 50, 1), height: 12, thickness: 1);

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
  static const TextStyle cardItemTextAuthorStyle = TextStyle(color: Colors.white, fontSize: 13.0);
  static const TextStyle cardItemTextTitleStyle = TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17.0);

  static const EdgeInsets foundationListPadding = EdgeInsets.symmetric(horizontal: 24.0);
  static const EdgeInsets foundationListHeaderPadding = EdgeInsets.symmetric(vertical: 8.0);
  static final TextStyle foundationListHeaderNameStyle = GoogleFonts.inter(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w600, letterSpacing: 0.5);
  static final TextStyle foundationListHeaderButtonStyle = GoogleFonts.inter(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 10.0);
  static const BoxDecoration foundationListHeaderButtonDecoration = BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(8.0)));
  static const EdgeInsets foundationListHeaderButtonPadding = EdgeInsets.all(8.0);
  static final TextStyle foundationListItemTextStyle = GoogleFonts.inter(color: Colors.white, fontSize: 16);
  static const EdgeInsets foundationListItemTextPadding = EdgeInsets.symmetric(horizontal: 1);
  static const Size foundationListItemImageSize = Size(35, 35);
  static const BoxShape foundationListItemImageShape = BoxShape.circle;
}

ThemeData appTheme = ThemeData(
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppTheme.backgroundColor,
    selectedIconTheme: IconThemeData(size: 30),
    unselectedIconTheme: IconThemeData(size: 30),
  ),

  scaffoldBackgroundColor: AppTheme.backgroundColor,
);

