import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pixelfield_app/common/constants.dart';
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
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Carousel(),
          ),
          Padding(
            padding: AppTheme.dashboadTextPadding,
            child: Text(Texts.dashboardProjectTitle, style: AppTheme.dashboardTextStyle),
          ),
          Padding(
            padding: AppTheme.dashboardWidgetPadding,
            child: ProjectList(listProjects),
          ),
          Padding(
            padding: AppTheme.dashboadDividerPadding,
            child: AppTheme.divider,
          ),
          Padding(
            padding: AppTheme.dashboardWidgetPadding,
            child: CardList(),
          ),
          Padding(
            padding: AppTheme.dashboardWidgetPadding,
            child: FoundationList(),
          ),
          Padding(
            padding: AppTheme.dashboadTextPadding,
            child: Text(Texts.dashboardCelebrityTitle, style: AppTheme.dashboardTextStyle),
          ),
          Padding(
            padding: AppTheme.dashboardWidgetPadding,
            child: ProjectList(listCelebrities),
          ),
        ],
      ),
    );
  }
}
