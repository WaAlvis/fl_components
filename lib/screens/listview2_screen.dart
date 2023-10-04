import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({super.key});

  final options = const [
    'Chevrolet',
    'Renault',
    'Alfaromeo',
    'Mercedez Benz',
    'BMW',
    'Ford'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1'),
        elevation: 0.0,
        backgroundColor: Colors.amber,
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
          trailing: const Icon(
            Icons.keyboard_arrow_right_outlined,
            color: Colors.amber,
          ),
          leading: const Icon(Icons.more_time),
          onTap: () {
            final mark = options[i];
            print(mark);
          },
          title: Text(
            options[i],
          ),
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: options.length,
      ),
    );
  }
}

