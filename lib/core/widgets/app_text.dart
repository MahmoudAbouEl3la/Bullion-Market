import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final double? size;
  final FontWeight? weight;
  final Color? color;
  final TextStyle? style;

  const AppText(
    this.text, {
    super.key,
    this.style,
    this.size,
    this.weight,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          style ?? TextStyle(fontSize: size, fontWeight: weight, color: color),
    );
  }
}
