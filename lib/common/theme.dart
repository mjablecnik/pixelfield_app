import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AppTheme {
  static const backgroundColor = Color.fromRGBO(5, 6, 31, 1);
  static const Size avatarSize = Size(28.0, 28.0);
  static const Divider divider = Divider(color: Color.fromRGBO(50, 50, 50, 1), height: 12, thickness: 1);


  // Dashboard:
  static const EdgeInsets dashboardWidgetPadding = EdgeInsets.symmetric(vertical: 16.0);
  static const EdgeInsets dashboadDividerPadding = EdgeInsets.symmetric(vertical: 16.0, horizontal: 24);
  static final TextStyle dashboardTextStyle = GoogleFonts.inter(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600, height: 1.4);
  static const EdgeInsets dashboadTextPadding = EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0);


  // Carousel:
  static const int carouselInterval = 5;
  static const int carouselAnimationDuration = 800;
  static const double carouselHeight = 200.0;
  static const double carouselIndicatorCornerRadius = 0.0;
  static const double carouselIndicatorSpace = 3.0;
  static const double carouselIndicatorBottomPosition = AppTheme.carouselHeight - 40;


  // CardList:
  static const double cardListHeight = 130.0;
  static const double cardListSpace = 20.0;
  static const double cardItemWidth = 213.0;
  static const double cardItemBorderRadius = 20.0;
  static const double cardItemTextWidth = 130.0;
  static const EdgeInsets cardItemTextPadding = EdgeInsets.only(left: 20.0, top: 40.0);
  static const TextStyle cardItemTextAuthorStyle = TextStyle(color: Colors.white, fontSize: 13.0);
  static const TextStyle cardItemTextTitleStyle = TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17.0);


  // FoundationList:
  static const EdgeInsets foundationListPadding = EdgeInsets.symmetric(horizontal: 24.0);
  // FoundationList header:
  static const EdgeInsets foundationListHeaderPadding = EdgeInsets.symmetric(vertical: 8.0);
  static final TextStyle foundationListHeaderNameStyle = GoogleFonts.inter(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w600, letterSpacing: 0.5);
  static final TextStyle foundationListHeaderButtonStyle = GoogleFonts.inter(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 10.0);
  static const BoxDecoration foundationListHeaderButtonDecoration = BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(8.0)));
  static const EdgeInsets foundationListHeaderButtonPadding = EdgeInsets.all(8.0);
  // FoundationList item:
  static final TextStyle foundationListItemTextStyle = GoogleFonts.inter(color: Colors.white, fontSize: 16);
  static const EdgeInsets foundationListItemTextPadding = EdgeInsets.symmetric(horizontal: 1);
  static const Size foundationListItemImageSize = Size(35.0, 35.0);
  static const BoxShape foundationListItemImageShape = BoxShape.circle;


  // ProjectList:
  static const Size projectListSize = Size(200.0, 310.0);
  static const EdgeInsets projectListPadding = EdgeInsets.symmetric(horizontal: 16.0);
  static const Size projectItemSize = Size(156.0, 194.0);
  static const EdgeInsets projectItemMargin = EdgeInsets.symmetric(horizontal: 8.0);
  static const EdgeInsets projectItemTextPadding = EdgeInsets.symmetric(vertical: 8.0);
  static const int projectItemTextMaxLines = 2;
  static final TextStyle projectItemTextStyle = GoogleFonts.inter(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w600, height: 1.2);
  // ProjectList label:
  static const Rect projectItemLabelPosition = Rect.fromLTRB(5.0, 5.0, 0.0, 0.0);
  static final BoxDecoration projectItemLabelDecoration = BoxDecoration(color: Color.fromRGBO(84, 88, 228, 1), borderRadius: BorderRadius.circular(4));
  static const EdgeInsets projectItemLabelPadding = EdgeInsets.all(5.0);
  static const EdgeInsets projectItemLabelTextPadding = EdgeInsets.symmetric(horizontal: 5.0);
  static final TextStyle projectItemLabelTextStyle = GoogleFonts.inter(color: Colors.white, fontSize: 10.0, fontWeight: FontWeight.w600, height: 1.2);
  // ProjectList progress:
  static final EdgeInsets projectItemProgressPadding = EdgeInsets.symmetric(vertical: 8.0);
  static final Color projectItemProgressColor = Color.fromRGBO(84, 88, 228, 1);
  static final Color projectItemProgressBackgroundColor = Color.fromRGBO(229, 229, 229, 1);
  static final double projectItemProgressHeight = 8.0;
  // ProjectList progress text:
  static const EdgeInsets projectItemProgressTextPadding = EdgeInsets.symmetric(vertical: 4.0);
  static final TextStyle projectItemProgressTextStyle = GoogleFonts.inter(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w600, height: 1.2);
  static final TextStyle projectItemProgressReadyTextStyle = GoogleFonts.inter(color: Color.fromRGBO(84, 88, 228, 1), fontSize: 12.0, fontWeight: FontWeight.w600, height: 1.2);
  static final Icon projectItemProgressReadyIcon = Icon(Icons.done, color: Color.fromRGBO(84, 88, 228, 1));
  // ProjectList progress time:
  static final EdgeInsets projectItemProgressTimeTextPadding = EdgeInsets.only(left: 4.5);
  static final TextStyle projectItemProgressTimeTextStyle = GoogleFonts.inter(color: Color.fromRGBO(121, 121, 125, 1), fontSize: 12.0, fontWeight: FontWeight.w600, height: 1.2);
}

ThemeData appTheme = ThemeData(
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppTheme.backgroundColor,
    selectedIconTheme: IconThemeData(size: 30),
    unselectedIconTheme: IconThemeData(size: 30),
  ),

  scaffoldBackgroundColor: AppTheme.backgroundColor,
);

