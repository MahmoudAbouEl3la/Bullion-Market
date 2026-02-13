import 'package:bullion_market/core/constants/app_colors.dart';
import 'package:bullion_market/core/constants/app_images.dart';
import 'package:bullion_market/core/constants/app_strings.dart';
import 'package:bullion_market/core/constants/app_text_styles.dart';
import 'package:bullion_market/core/widgets/app_loading_widget.dart';
import 'package:bullion_market/core/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bullion_market/features/silver/presentation/cubit/silver_cubit.dart';
import 'package:bullion_market/features/silver/presentation/cubit/silver_state.dart';

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
      body: BlocBuilder<SilverCubit, SilverState>(
        builder: (context, state) {
          if (state is LoadingSilverState) {
            return AppLoadingWidget(color: AppColors.silverSecondary);
          } else if (state is ErrorSilverState) {
            return Center(
              child: AppText(
                state.errorMessage,
                style: AppTextStyles.font18SilverWeight600,
              ),
            );
          } else if (state is SuccessSilverState) {
            final data = state.silverModel;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.silver, width: 200),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      data.price!.round().toString(),
                      style: AppTextStyles.font18SilverWeight600,
                    ),
                    const SizedBox(width: 4),
                    AppText(
                      AppStrings.usd,
                      style: AppTextStyles.font18SilverWeight600,
                    ),
                  ],
                ),
              ],
            );
          } else {
            return Center(
              child: AppText(
                "No data available",
                style: AppTextStyles.font18SilverWeight600,
              ),
            );
          }
        },
      ),
    );
  }
}
