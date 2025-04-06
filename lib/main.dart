import 'package:flutter/material.dart';
import 'package:quran_app/Featured/Home/Views/home_view.dart';
import 'package:quran_app/Featured/Splash/Views/splash_view.dart';
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
        SplashView.id : (context) => const SplashView(),
        MainHomeView.id : (context) => const MainHomeView(),
        HomeView.id : (context) => const HomeView(),
        
      },
      initialRoute: SplashView.id,
    );
  }
}