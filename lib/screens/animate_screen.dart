import 'dart:math' show Random;

import 'package:flutter/material.dart';

class AnimateScreen extends StatefulWidget {
  const AnimateScreen({super.key});

  @override
  State<AnimateScreen> createState() => _AnimateScreenState();
}

class _AnimateScreenState extends State<AnimateScreen> {
  Color _color = Colors.red;
  double _height = 130;
  double _widht = 100;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);

  void changeShape() {
    final random = Random();

    _widht = random.nextInt(200) + 70;
    _height = random.nextInt(200) + 70;

    _borderRadius =
        BorderRadiusDirectional.circular(random.nextInt(300).toDouble());

    _color = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      1,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeShape();
        },
        child: const Icon(Icons.play_arrow),
      ),
      appBar: AppBar(
        title: const Text('Animate'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _widht,
          height: _height,
          curve: Curves.fastOutSlowIn,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color,
          ),
          duration: const Duration(milliseconds: 400),
        ),
      ),
    );
  }
}
