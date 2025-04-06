import 'package:flutter/material.dart';
import 'package:quran_app/Core/Widgets/custom_background.dart';
import 'package:quran_app/Featured/on_boarding/Widgets/on_boarding_view.body.dart';


class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static String id = "OnBoardingView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: CustomBackground(child: OnBoardingViewBody()));
  }
}