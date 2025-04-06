import 'package:flutter/material.dart';
import 'package:quran_app/Core/Utils/app_styles.dart';
import 'package:quran_app/Core/Utils/assets.dart';


class CustomSongsDetailsPlayMusic extends StatelessWidget {
  const CustomSongsDetailsPlayMusic({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 90),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 247.06 / 261,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(Assets.imagesTest, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 22),
          Text("NEW RULES", style: AppStyles.styleMedium18(context)),
          const SizedBox(height: 4),
          Text("NEW RULES", style: AppStyles.styleMedium12(context)),
        ],
      ),
    );
  }
}
