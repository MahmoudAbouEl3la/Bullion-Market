import 'package:bullion_market/core/constants/app_images.dart';
import 'package:bullion_market/core/constants/app_strings.dart';
import 'package:bullion_market/core/constants/app_text_styles.dart';
import 'package:bullion_market/core/widgets/app_text.dart';
import 'package:flutter/material.dart';

class SilverScreen extends StatelessWidget {
  const SilverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AppText(
          AppStrings.silverScreenAppBarTitle,
          style: AppTextStyles.font18SilverWeight600,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppImages.silver, width: 200),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText("2000", style: AppTextStyles.font18SilverWeight600),
              const SizedBox(width: 2),
              AppText(
                AppStrings.usd,
                style: AppTextStyles.font18SilverWeight600,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
