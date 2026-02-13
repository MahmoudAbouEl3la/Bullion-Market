import 'package:flutter/material.dart';

class AppCircleAvatar extends StatelessWidget {
  final String imageUrl;
  final double? radius;
  final VoidCallback? onTap;

  const AppCircleAvatar({
    super.key,
    required this.imageUrl,
    this.radius,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: radius ?? 20,
        backgroundImage: AssetImage(imageUrl),
      ),
    );
  }
}
