import 'package:flutter/widgets.dart';
import 'package:quran_app/Core/Utils/app_colors.dart';
import 'package:quran_app/Core/Utils/assets.dart';


class CustomImageOnBoarding extends StatelessWidget {
  const CustomImageOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          const SizedBox(
            width: double.infinity,
            child: Image(
              image: AssetImage(Assets.imagesOnBoardingImage),

              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 199,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: const Alignment(0.00, 1.00),
                  end: const Alignment(0, -1),
                  colors: [
                    AppColors.kPrimaryColor,
                    AppColors.kLight4BlueColor.withOpacity(.04),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
