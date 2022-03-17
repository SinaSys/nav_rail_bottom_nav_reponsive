import 'package:flutter/material.dart';
import 'package:nav_rail_bottom_nav_reponsive/widgets/widget_data_provider.dart';

class NavRail extends StatefulWidget {

  final List<Widget> screens;

  const NavRail({Key? key,  required this.screens}) : super(key: key);

  @override
  State<NavRail> createState() => _NavRailState();
}

class _NavRailState extends State<NavRail> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            labelType: NavigationRailLabelType.all,
            minWidth: 100.0,
              destinations: widgetDataProviders
                  .map((item) =>
                  NavigationRailDestination(icon: item.icon, label: Text(item.label)))
                  .toList(),
              onDestinationSelected: (int index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              selectedIndex: selectedIndex),
          Expanded(child: widget.screens[selectedIndex])
        ],
      ),
    );
  }
}
