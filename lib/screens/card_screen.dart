import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.public,
                  ),
                  title: Text('Este es un titulo'),
                  subtitle: Text(
                      'Q. Ea pariatur nostrud nulla consequat mollit incididunt occaecat proident anim proident excepteur laborum sunt irure. Aliquip cillum esse do esse aliquip. Non cupidatat dolore duis elit amet esse non.'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('Cancel'),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Ok'),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
