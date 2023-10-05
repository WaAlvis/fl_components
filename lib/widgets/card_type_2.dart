import 'dart:ffi';

import 'package:flutter/material.dart';

class CardType2 extends StatelessWidget {
  final String urlImage;
  final String? title;

  const CardType2({super.key, required this.urlImage, this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FadeInImage(
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            placeholder: const AssetImage('assets/botle_cloud_loading.gif'),
            image: NetworkImage(urlImage),
          ),
          if (title != null)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 12),
              child: Text(
                title ?? 'No Data Title',
                textAlign: TextAlign.end,
              ),
            )
        ],
      ),
    );
  }
}
