import 'package:bullion_market/core/constants/app_colors.dart';
import 'package:bullion_market/core/constants/app_strings.dart';
import 'package:bullion_market/core/widgets/app_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppButton(title: AppStrings.gold, onPressed: () {}),
          AppButton(
            title: AppStrings.silver,
            onPressed: () {},
            color: AppColors.silverSecondary,
          ),
        ],
      ),
    );
  }
}
