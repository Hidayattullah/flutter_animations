// lib/views/home/home_page.dart
import 'package:flutter/material.dart';
import '../../widgets/animated_button.dart';
import '../animations/button_animation.dart';
import '../animations/hero_transition.dart';
import '../animations/loading_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Animations Showcase test')),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedButton(),
          SizedBox(height: 20),
          ButtonAnimation(),
          SizedBox(height: 20),
          HeroTransition(),
          SizedBox(height: 20),
          LoadingAnimation(),
        ],
      ),
    );
  }
}
