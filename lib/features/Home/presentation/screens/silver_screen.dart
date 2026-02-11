import 'package:bullion_market/core/constants/app_colors.dart';
import 'package:bullion_market/core/widgets/app_text.dart';
import 'package:flutter/material.dart';

class SilverScreen extends StatelessWidget {
  const SilverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.silverSecondary,
      body: Center(
        child: AppText("Silver Page", size: 18, color: AppColors.appBackground),
      ),
    );
  }
}
