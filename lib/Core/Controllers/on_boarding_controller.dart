import 'package:flutter/material.dart';
import 'package:quran_app/Layout/main_home_view.dart';


abstract class OnBoardingController {
  static void navigateToHomeViewView(BuildContext context) {
    Navigator.pushNamed(context, MainHomeView.id);
  }
}