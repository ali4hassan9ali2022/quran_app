import 'package:flutter/material.dart';
import 'package:quran_app/Core/Widgets/custom_background.dart';
import 'package:quran_app/Featured/Home/Widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = "HomeView";
  @override
  Widget build(BuildContext context) {
    return const CustomBackground(child: HomeViewBody());
  }
}
