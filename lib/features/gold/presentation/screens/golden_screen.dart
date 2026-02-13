import 'package:bullion_market/core/constants/app_images.dart';
import 'package:bullion_market/core/constants/app_strings.dart';
import 'package:bullion_market/core/constants/app_text_styles.dart';
import 'package:bullion_market/core/navigation/navigation_extension.dart';
import 'package:bullion_market/core/widgets/app_icon_button.dart';
import 'package:bullion_market/core/widgets/app_loading_widget.dart';
import 'package:bullion_market/core/widgets/app_text.dart';
import 'package:bullion_market/features/gold/presentation/cubit/gold_cubit.dart';
import 'package:bullion_market/features/gold/presentation/cubit/gold_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoldenScreen extends StatelessWidget {
  const GoldenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: AppIconButton(
          icon: Icons.arrow_back,
          onPressed: () {
            context.back();
          },
        ),
        title: AppText(
          AppStrings.goldScreenAppBarTitle,
          style: AppTextStyles.font18GoldWeight600,
        ),
      ),
      body: BlocBuilder<GoldCubit, GoldState>(
        builder: (context, state) {
          if (state is LoadingGoldState) {
            return const Center(child: AppLoadingWidget());
          } else if (state is ErrorGoldState) {
            return Center(
              child: AppText(
                state.errorMessage,
                style: AppTextStyles.font18GoldWeight600,
              ),
            );
          } else if (state is SuccessGoldState) {
            final data = state.goldModel;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.gold, width: 200),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      data.price!.round().toString(),
                      style: AppTextStyles.font18GoldWeight600,
                    ),
                    const SizedBox(width: 4),
                    AppText(
                      AppStrings.usd,
                      style: AppTextStyles.font18GoldWeight600,
                    ),
                  ],
                ),
              ],
            );
          } else {
            return const Center(
              child: AppText(
                'Something went wrong',
                style: AppTextStyles.font18GoldWeight600,
              ),
            );
          }
        },
      ),
    );
  }
}
