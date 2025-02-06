// lib/views/animations/loading_animation.dart
import 'package:flutter/material.dart';

class LoadingAnimation extends StatelessWidget {
  const LoadingAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator();
  }
}