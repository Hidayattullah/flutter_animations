// lib/widgets/animated_button.dart
import 'package:flutter/material.dart';

class AnimatedButton extends StatefulWidget {
  const AnimatedButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isPressed = !_isPressed;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 50,
        width: _isPressed ? 200 : 150,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: _isPressed ? Colors.blue : Colors.green,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          _isPressed ? 'Pressed' : 'Press Me',
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
