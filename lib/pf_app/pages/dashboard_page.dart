import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pixelfield_app/pf_app/widgets/carousel.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(context) {
    return SafeArea(
      child: Column(
        children: [
          Carousel(),
        ],
      ),
    );
  }
}

