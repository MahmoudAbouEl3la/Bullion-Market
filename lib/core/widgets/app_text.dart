import 'package:flutter/material.dart';
import '../constants/app_fonts.dart';

class AppText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight? weight;
  final Color color;

  const AppText(
    this.text, {
    super.key,
    required this.size,
    this.weight,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: weight ?? FontWeight.normal,
        color: color,
        fontFamily: AppFonts.primary,
      ),
    );
  }
}
