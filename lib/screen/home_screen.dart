import 'package:flutter/material.dart';
import 'package:nav_rail_bottom_nav_reponsive/responsive_util.dart';
import 'package:nav_rail_bottom_nav_reponsive/screen/profile_screen.dart';
import 'package:nav_rail_bottom_nav_reponsive/screen/favorite_screen.dart';
import 'package:nav_rail_bottom_nav_reponsive/screen/setting_screen.dart';
import 'package:nav_rail_bottom_nav_reponsive/widgets/bottom_nav.dart';
import 'package:nav_rail_bottom_nav_reponsive/widgets/nav_rail.dart';
import 'package:nav_rail_bottom_nav_reponsive/widgets/tab_bar.dart';


class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    Widget widget;
    switch (getScreenSize(width)) {
      case ScreenSize.small :
        widget = BottomNav();
        break;
      case ScreenSize.medium:
        widget = TabBarWidget();
        break;
      case ScreenSize.large:
        widget = NavRail();
        break;
    }
    return widget;
  }
}


