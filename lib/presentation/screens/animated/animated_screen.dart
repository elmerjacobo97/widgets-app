import 'dart:math' show Random; // Solo me interesa Random

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  static const String routeName = 'animated_screen';
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 200;
  double height = 200;
  double borderRadius = 10.0;
  Color color = Colors.indigo;

  void changeShape() {
    final random = Random();

    setState(() {
      width = random.nextInt(300).toDouble() + 120;
      height = random.nextInt(300).toDouble() + 120;
      borderRadius = random.nextInt(100).toDouble() + 20;
      color = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
        1,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.elasticInOut, // tipo de animación
          width: width <= 0 ? 0 : width,
          height: height <= 0 ? 0 : height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow_outlined),
      ),
    );
  }
}
