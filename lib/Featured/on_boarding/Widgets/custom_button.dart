import 'package:flutter/material.dart';
import 'package:quran_app/Core/Controllers/on_boarding_controller.dart';
import 'package:quran_app/Core/Utils/app_colors.dart';
import 'package:quran_app/Core/Utils/app_styles.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        OnBoardingController.navigateToHomeViewView(context);
      },
      child: Container(
        height: 60,
        width: 171,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: const Border(top: BorderSide(color: Colors.white, width: 1)),
          gradient: const LinearGradient(
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: [AppColors.kLight3BlueColor, AppColors.kLight4BlueColor],
          ),
        ),
        child: Center(
          child: Text("Get Start", style: AppStyles.styleMedium18(context)),
        ),
      ),
    );
  }
}