import 'package:flutter/material.dart';

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
              destinations: const [
                NavigationRailDestination(
                    icon: Icon(Icons.person), label: Text("Profile")),
                NavigationRailDestination(
                    icon: Icon(Icons.favorite), label: Text("Favorite")),
                NavigationRailDestination(
                    icon: Icon(Icons.settings), label: Text("Setting")),
              ],
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
