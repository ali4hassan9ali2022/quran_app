import 'package:flutter/material.dart';
import 'package:quran_app/Core/Widgets/custom_background.dart';
import 'package:quran_app/Featured/Splash/Widgets/splash_view_body.dart';


class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
      child: Scaffold(body: CustomBackground(child: SplashViewBody())),
    );
  }
}