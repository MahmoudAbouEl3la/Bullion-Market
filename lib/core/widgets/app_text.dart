import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_fonts.dart';

class AppText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight weight;
  final Color color;

  const AppText(
    this.text, {
    super.key,
    this.size = 14,
    this.weight = FontWeight.normal,
    this.color = AppColors.textMain,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: color,
        fontFamily: AppFonts.primary,
      ),
    );
  }
}
