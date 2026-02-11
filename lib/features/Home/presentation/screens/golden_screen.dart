import 'package:bullion_market/core/constants/app_colors.dart';
import 'package:bullion_market/core/widgets/app_text.dart';
import 'package:flutter/material.dart';

class GoldenScreen extends StatelessWidget {
  const GoldenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.goldPrimary,
      body: Center(
        child: AppText("Golden Page", size: 18, color: AppColors.appBackground),
      ),
    );
  }
}
