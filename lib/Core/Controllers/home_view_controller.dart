import 'package:flutter/material.dart';
import 'package:quran_app/Featured/Play/Views/play_view.dart';
abstract class HomeViewController {
  static void navigateToPlayView({required BuildContext context, required int index}) {
    Navigator.pushNamed(context, PlayView.id, arguments: index);
  }
}