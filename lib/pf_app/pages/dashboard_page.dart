import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pixelfield_app/common/theme.dart';
import 'package:pixelfield_app/pf_app/widgets/card_list.dart';
import 'package:pixelfield_app/pf_app/widgets/carousel.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(context) {
    return SafeArea(
      child: Column(
        children: [
          Carousel(),
          Padding(
            padding: AppTheme.dashboardWidgetPadding,
            child: CardList(),
          )
        ],
      ),
    );
  }
}

