import 'package:animated_indexed_stack/animated_indexed_stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pixelfield_app/common/constants.dart';
import 'package:pixelfield_app/common/theme.dart';
import 'package:pixelfield_app/pf_app/pages/dashboard_page.dart';
import 'package:pixelfield_app/pf_app/pages/projects_page.dart';
import 'package:pixelfield_app/pf_app/pages/profile_page.dart';

import 'controller.dart';

class TabNavigationItem {
  final Widget page;
  final Widget icon;

  TabNavigationItem({
    @required this.page,
    @required this.icon,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: DashboardPage(),
          icon: SvgPicture.asset(SvgIcons.breegy),
        ),
        TabNavigationItem(
          page: ProjectsPage(),
          icon: SvgPicture.asset(SvgIcons.main),
        ),
        TabNavigationItem(
          page: ProfilePage(),
          icon: Container(
            width: AppTheme.avatarSize.width,
            height: AppTheme.avatarSize.height,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(defaultAvatar),
              ),
            ),
          ),
        )
      ];
}

class PfAppView extends StatelessWidget {
  @override
  Widget build(context) {
    return GetX<PfAppController>(
      init: PfAppController(),
      builder: (controller) => Scaffold(
        body: AnimatedIndexedStack(
          transitionBuilder: slideTransition,
          selectedIndex: controller.index,
          children: [
            for (final tabItem in TabNavigationItem.items) tabItem.page,
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: controller.index,
          onTap: controller.changeIndex,
          items: [
            for (final tabItem in TabNavigationItem.items)
              BottomNavigationBarItem(
                icon: tabItem.icon,
                label: "",
              )
          ],
        ),
      ),
    );
  }
}

final RouteTransitionsBuilder slideTransition = (
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) {
  return GetBuilder<PfAppController>(
    init: PfAppController(),
    builder: (c) {
      Widget appear = SlideTransition(
        position: Tween<Offset>(
          begin: Offset(c.transitionPos.toDouble(), 0.0),
          end: const Offset(0.0, 0.0),
        ).animate(animation),
        child: child,
      );

      Widget disappear = SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0.0, 0.0),
          end: Offset(-c.transitionPos.toDouble(), 0.0),
        ).animate(secondaryAnimation),
        child: appear,
      );

      return disappear;
    },
  );
};
