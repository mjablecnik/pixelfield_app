import 'dart:ui';

import 'package:pixelfield_app/pf_app/widgets/card_list.dart';

class Routes {
  static const HOME = '/';
  static const ITEMS = '/items';
  static const JOTTINGS = '/jottings';
}

class SvgIcons {
  static const String main = 'assets/icons/main.svg';
  static const String profile = 'assets/icons/profile.svg';
  static const String breegy = 'assets/icons/breegy.svg';
}

const defaultAvatar = "assets/images/avatar.jpg";

const List<String> carouselImages = [
  "assets/images/carousel1.jpg",
  "assets/images/carousel2.jpg",
  "assets/images/carousel3.jpg",
  "assets/images/carousel4.jpg",
  "assets/images/carousel5.jpg",
];

final List<CardDto> listCards = [
  CardDto(
    "Změna začíná uvědoměním",
    author: "Pavel Moric",
    colors: [Color.fromRGBO(180, 83, 255, 1), Color.fromRGBO(122, 33, 255, 1)],
  ),
  CardDto("Jak funguje neziskový sektor", colors: [Color.fromRGBO(92, 239, 202, 1), Color.fromRGBO(57, 179, 230, 1)]),
  CardDto("Další zajímavé informace", colors: [Color.fromRGBO(239, 220, 110, 1), Color.fromRGBO(233, 202, 1, 1)]),
];
