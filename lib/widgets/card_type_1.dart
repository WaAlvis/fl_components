import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CardType1 extends StatelessWidget {
  const CardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
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
                style: TextButton.styleFrom(
                  foregroundColor: AppTheme.primaryColor,
                ),
                child: const  Text('Cancel'),
              ),
              const SizedBox(
                width: 5,
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Ok'),
              ),
            ],
          )
        ],
      ),
    );
  }
}