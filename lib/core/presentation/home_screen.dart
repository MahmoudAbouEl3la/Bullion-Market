import 'package:bullion_market/core/constants/app_colors.dart';
import 'package:bullion_market/core/constants/app_strings.dart';
import 'package:bullion_market/core/navigation/navigation_extension.dart';
import 'package:bullion_market/core/routing/routes.dart';
import 'package:bullion_market/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppTextButton(
            title: AppStrings.gold,
            onPressed: () {
              context.pushTo(Routes.goldScreen);
            },
          ),
          AppTextButton(
            title: AppStrings.silver,
            onPressed: () {
              context.pushTo(Routes.silverScreen);
            },
            color: AppColors.silverSecondary,
          ),
        ],
      ),
    );
  }
}
