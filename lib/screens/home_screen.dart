import 'package:fl_components/router/app_route.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoute.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(menuOptions[index].icon),
          title: Text(menuOptions[index].name),
          onTap: () =>
              Navigator.pushNamed(context, menuOptions[index].nameRoute),
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: menuOptions.length,
      ),
    );
  }
}
