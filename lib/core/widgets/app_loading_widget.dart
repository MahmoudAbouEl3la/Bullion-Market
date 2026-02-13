import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AppLoadingWidget extends StatelessWidget {
  final Color? color;
  const AppLoadingWidget({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: color ?? AppColors.goldPrimary,
        strokeWidth: 2,
        value: 2,
        backgroundColor: AppColors.appBackground,
      ),
    );
  }
}
