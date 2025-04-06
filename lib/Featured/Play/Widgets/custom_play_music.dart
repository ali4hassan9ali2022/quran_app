import 'package:flutter/material.dart';
import 'package:quran_app/Core/Utils/app_colors.dart';
import 'package:quran_app/Core/Utils/app_styles.dart';
import 'package:quran_app/Core/Utils/assets.dart';


class CustomPlayMusic extends StatelessWidget {
  const CustomPlayMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 13),
      width: double.infinity,

      decoration: BoxDecoration(
        color: AppColors.kLightWhiteColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Up Next", style: AppStyles.styleMedium8(context)),
              Container(
                height: 16,
                width: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff8a86f4).withOpacity(0.5),
                ),
                child: Center(
                  child: Text(
                    "Queue >",
                    style: AppStyles.styleMedium8(context),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 13),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(Assets.imagesTest, height: 55),
              ),
              const SizedBox(width: 13),
              Column(
                children: [
                  Text(
                    "sing me to sleep",
                    style: AppStyles.styleMedium15(context),
                  ),
                  const SizedBox(height: 3),
                  Text("alan walker", style: AppStyles.styleMedium12(context)),
                ],
              ),
              const SizedBox(width: 106),
              Image.asset(Assets.imagesNext, width: 16, height: 15),
            ],
          ),
        ],
      ),
    );
  }
}
