import 'package:flutter/material.dart';

class MenuOption {
  final IconData icon;
  final String nameRoute;
  final String name;
  final Widget screen;

  MenuOption({
    required this.icon,
    required this.nameRoute,
    required this.name,
    required this.screen,
  });
}
