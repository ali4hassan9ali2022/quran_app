import 'package:flutter/material.dart';
import 'package:quran_app/Core/Widgets/custom_background.dart';


class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
      child: Scaffold(body: CustomBackground(child: SizedBox())),
    );
  }
}