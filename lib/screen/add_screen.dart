import 'package:flutter/material.dart';
import 'favorite_screen.dart';
import 'profile_screen.dart';
import 'setting_screen.dart';

mixin AddScreen{
  final List<Widget> screens = [
    const ProfileScreen(),
    const FavoriteScreen(),
    const SettingScreen(),
  ];
}