import 'package:flutter/widgets.dart';
import 'package:quran_app/Layout/main_home_view.dart';


abstract class SplashController {
  static void navigateToOnBoardingViewView(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      // Get.to(() => const HomeView(),
      //     transition: Transition.fade, duration: kTransitionDuration);
      // ignore: use_build_context_synchronously
      Navigator.pushNamed(context, MainHomeView.id);
    });
  }
}