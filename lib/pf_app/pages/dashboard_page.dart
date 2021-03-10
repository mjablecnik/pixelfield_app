import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pixelfield_app/common/theme.dart';
import 'package:pixelfield_app/pf_app/widgets/card_list.dart';
import 'package:pixelfield_app/pf_app/widgets/carousel.dart';
import 'package:pixelfield_app/pf_app/widgets/foundation_list.dart';
import 'package:pixelfield_app/pf_app/widgets/project_list.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      child: ListView(
        children: [
          Carousel(),
          Padding(
            padding: AppTheme.dashboardWidgetSpacing,
            child: ProjectList(),
          ),
          Padding(
            padding: AppTheme.dashboadDividerPadding,
            child: AppTheme.divider,
          ),
          Padding(
            padding: AppTheme.dashboardWidgetSpacing,
            child: CardList(),
          ),
          FoundationList()
        ],
      ),
    );
  }
}
