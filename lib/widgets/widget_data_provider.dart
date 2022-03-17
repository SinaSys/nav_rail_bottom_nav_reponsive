import 'package:flutter/material.dart';

class WidgetDataProvider{
  Icon icon;
  String label;
  WidgetDataProvider(this.icon, this.label);
}

List<WidgetDataProvider> widgetDataProviders = [
  WidgetDataProvider(const Icon(Icons.person), 'Profile'),
  WidgetDataProvider(const Icon(Icons.favorite), 'Favorite'),
  WidgetDataProvider(const Icon(Icons.settings), 'Setting'),
];