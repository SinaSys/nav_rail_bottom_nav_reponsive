import 'package:flutter/material.dart';
import 'package:nav_rail_bottom_nav_reponsive/widgets/widget_data_provider.dart';

class TabBarWidget extends StatelessWidget {

  final List<Widget> screens;

  const TabBarWidget({Key? key, required this.screens}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widgetDataProviders.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: widgetDataProviders
                .map((item) =>
                Tab(
                  icon: item.icon,
                  text: item.label,
                ))
                .toList(),
          ),
        ),
        body: TabBarView(
          children: screens.map((item) => item).toList(),
        ),
      ),
    );
  }
}
