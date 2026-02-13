import 'package:bullion_market/core/di/service_locator.dart';
import 'package:bullion_market/features/gold/data/repo/gold_repo.dart';
import 'package:bullion_market/features/gold/presentation/cubit/gold_cubit.dart';
import 'package:bullion_market/features/gold/presentation/screens/golden_screen.dart';
import 'package:bullion_market/features/silver/presentation/screens/silver_screen.dart';
import 'package:flutter/material.dart';

import 'package:bullion_market/core/presentation/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'routes.dart';

class AppRouter {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.goldScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => GoldCubit(goldRepo: sl<GoldRepo>())..getGold(),
            child: const GoldenScreen(),
          ),
        );
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
