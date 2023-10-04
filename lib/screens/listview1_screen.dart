import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({super.key});

  final options = const [
    'Chevrolet',
    'Renault',
    'Alfaromeo',
    'Mercedez Benz',
    'BMW',
    'Ford'
  ];

  //separete, creamos listview2

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1'),
      ),
      body: ListView(
        children: options
            .map((e) => ListTile(
                  trailing: const Icon(Icons.keyboard_arrow_right_outlined),
                  leading: const Icon(Icons.more_time),
                  title: Text(e),
                ))
            .toList(),
      ),
    );
  }
}
