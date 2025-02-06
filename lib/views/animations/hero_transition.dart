// lib/views/animations/hero_transition.dart
import 'package:flutter/material.dart';

class HeroTransition extends StatelessWidget {
  const HeroTransition({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const HeroDetailPage()),
        );
      },
      child: Hero(
        tag: 'hero-tag',
        child: Container(height: 100, width: 100, color: Colors.blue),
      ),
    );
  }
}

class HeroDetailPage extends StatelessWidget {
  const HeroDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hero Detail')),
      body: Center(
        child: Hero(
          tag: 'hero-tag',
          child: Container(height: 200, width: 200, color: Colors.blue),
        ),
      ),
    );
  }
}