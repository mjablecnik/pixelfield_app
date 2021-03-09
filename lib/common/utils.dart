// File for various useful functions


import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';


Picture getSvgIcon(String rawSvg) {
  svg.fromSvgString(rawSvg, rawSvg).then((value) => value.toPicture());
}