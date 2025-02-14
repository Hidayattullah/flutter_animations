// lib/core/app_routes.dart
import 'package:flutter/material.dart';
import '../views/home/home_page.dart';

class AppRoutes {
  static const String home = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(body: Center(child: Text('Page Not Found'))),
        );
    }
  }
}