import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';

class AppTextButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color? color;
  final double? radius;
  final Color? textColor;

  const AppTextButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.color,
    this.radius,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        width: size.width * 0.5,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
              backgroundColor: color ?? AppColors.goldPrimary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  radius ?? AppSizes.radiusMedium,
                ),
              ),
            ),
            child: Text(
              title,
              style: TextStyle(color: textColor ?? AppColors.appBackground),
            ),
          ),
        ),
      ),
    );
  }
}
