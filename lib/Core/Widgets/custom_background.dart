import 'package:flutter/material.dart';
import 'package:quran_app/Core/Utils/app_colors.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.2, -0.98),
          end: const Alignment(-0.2, 0.98),
          colors: [
            AppColors.kPrimaryColor,
            AppColors.kSecondPrimaryColor.withOpacity(0.54),
          ],
        ),
      ),
      child: child,
    );
  }
}