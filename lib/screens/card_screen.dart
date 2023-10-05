import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen'),
      ),
      body: ListView(
        padding: const  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const  [
          CardType1(),
          SizedBox(height: 10,),
          CardType2(urlImage: 'https://expertphotography.b-cdn.net/wp-content/uploads/2022/05/Landscape-Photography-Sophie-Turner.jpg', title: 'Este es un hermoso',),
          SizedBox(height: 10,),
          CardType2(urlImage: 'https://petapixel.com/assets/uploads/2022/08/fdfs11-800x533.jpg', ),
          SizedBox(height: 10,),
          CardType2(urlImage: 'https://www.usnews.com/dims4/USNEWS/62f0db7/2147483647/thumbnail/970x647/quality/85/?url=https%3A%2F%2Fwww.usnews.com%2Fcmsmedia%2F0a%2F3b%2Fa66cd64d424ca5945e01361adbb3%2Figuazu-falls-stock.jpg', ),
          SizedBox(height: 40,),
        ],
      ),
    );
  }
}
