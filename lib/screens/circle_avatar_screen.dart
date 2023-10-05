import 'package:flutter/material.dart';

class CircleAvatarScreen extends StatelessWidget {
  const CircleAvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: const [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://static.wikia.nocookie.net/totalwar-ar/images/8/88/Michael_Jordan.jpg/revision/latest?cb=20171201172320'),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          radius: 120,
          backgroundImage: NetworkImage(
              'https://i.ytimg.com/vi/d4aawU6EOLo/hqdefault.jpg'),
        ),
      ),
    );
  }
}
