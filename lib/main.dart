import 'package:bullion_market/core/routing/app_routing.dart';
import 'package:bullion_market/core/routing/routes.dart';
import 'package:bullion_market/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bullion Market',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.appBackground,
        colorScheme: ColorScheme.dark(
          primary: AppColors.goldPrimary,
          secondary: AppColors.silverSecondary,
          surface: AppColors.appBackground,
          error: AppColors.priceDown,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: AppColors.textMain),
          bodyMedium: TextStyle(color: AppColors.textMuted),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.appBackground,
          titleTextStyle: TextStyle(
            color: AppColors.textMain,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: AppColors.textMain),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColors.goldPrimary,
          foregroundColor: AppColors.textMain,
        ),
      ),
      onGenerateRoute: AppRouter.generate,
      initialRoute: Routes.homeScreen,
    );
  }
}
