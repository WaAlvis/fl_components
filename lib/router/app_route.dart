import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoute {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        icon: Icons.home,
        nameRoute: 'home',
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOption(
        icon: Icons.warning_amber,
        nameRoute: 'alert',
        name: 'Alert Screen',
        screen: const AlertScreen()),
    MenuOption(
        icon: Icons.card_membership,
        nameRoute: 'card',
        name: 'Card Screen',
        screen: const CardScreen()),
    MenuOption(
        icon: Icons.looks_one_outlined,
        nameRoute: 'listview 1',
        name: 'List View 1',
        screen: const Listview1Screen()),
    MenuOption(
        icon: Icons.looks_two_outlined,
        nameRoute: 'listview 2',
        name: 'List View 2',
        screen: const Listview2Screen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.nameRoute: (_) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen(),
  //   'listview1': (context) => const Listview1Screen(),
  //   'listview2': (context) => const Listview2Screen(),
  // };
}
