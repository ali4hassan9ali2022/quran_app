import 'package:flutter/material.dart';
import 'package:quran_app/Layout/main_home_view.dart';

void main() {
  runApp(const QuranApp());
}

class QuranApp extends StatelessWidget {
  const QuranApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MainHomeView.id : (context) => const MainHomeView(),
      },
      initialRoute: MainHomeView.id,
    );
  }
}