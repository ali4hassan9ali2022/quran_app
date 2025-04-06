import 'package:flutter/widgets.dart';
import 'package:quran_app/Core/Utils/app_colors.dart';
import 'package:quran_app/Core/Utils/app_styles.dart';
import 'package:quran_app/Featured/on_boarding/Widgets/custom_button.dart';
import 'package:quran_app/Featured/on_boarding/Widgets/custom_image_on_boarding.dart';


class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 111),
        Text(
          "Find Your\nFavourite",
          style: AppStyles.styleBold50(context).copyWith(height: 1),
        ),
        Text(
          "Music",
          style: AppStyles.styleBold50(
            context,
          ).copyWith(color: AppColors.kLight1BlueColor, height: 1),
        ),
        const SizedBox(height: 11),
        Text(
          textAlign: TextAlign.center,
          "Find Your Latest Favourite Music\n From Our Collection",
          style: AppStyles.styleMedium15(context),
        ),
        const SizedBox(height: 58),

        const CustomButton(),
        const CustomImageOnBoarding(),
      ],
    );
  }
}