import 'package:flutter/material.dart';
import 'package:nav_rail_bottom_nav_reponsive/responsive_util.dart';
import 'package:nav_rail_bottom_nav_reponsive/screen/profile_screen.dart';
import 'package:nav_rail_bottom_nav_reponsive/screen/favorite_screen.dart';
import 'package:nav_rail_bottom_nav_reponsive/screen/setting_screen.dart';
import 'package:nav_rail_bottom_nav_reponsive/widgets/bottom_nav.dart';
import 'package:nav_rail_bottom_nav_reponsive/widgets/nav_rail.dart';


class HomeScreen extends StatelessWidget {
  
    final List<Widget> screens = [
    const ProfileScreen(),
    const FavoriteScreen(),
    const SettingScreen()
  ];

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    Widget widget;
    switch (getScreenSize(width)) {
      case ScreenSize.small :
        widget = BottomNav(screens: screens);
        break;
      case ScreenSize.medium:
      case ScreenSize.large:
        widget = NavRail(screens: screens);
        break;
    }
    return widget;
  }
}


