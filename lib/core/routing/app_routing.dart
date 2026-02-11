import 'package:bullion_market/features/Home/presentation/screens/golden_screen.dart';
import 'package:bullion_market/features/Home/presentation/screens/home_screen.dart';
import 'package:bullion_market/features/Home/presentation/screens/silver_screen.dart';
import 'package:flutter/material.dart';
import 'routes.dart';

class AppRouter {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.goldenScreen:
        return MaterialPageRoute(builder: (_) => const GoldenScreen());
      case Routes.silverScreen:
        return MaterialPageRoute(builder: (_) => const SilverScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
