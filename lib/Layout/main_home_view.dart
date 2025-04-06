import 'package:flutter/material.dart';
import 'package:quran_app/Core/Utils/app_colors.dart';
import 'package:quran_app/Featured/Home/Views/home_view.dart';

class MainHomeView extends StatefulWidget {
  const MainHomeView({super.key});
  static String id = "MainHomeView";
  @override
  State<MainHomeView> createState() => _MainHomeViewState();
}

class _MainHomeViewState extends State<MainHomeView> {
  List<Widget> pages = [const SizedBox(), const HomeView(), const SizedBox(), const SizedBox()];
  int currentIndex = 0;
  PageController controller = PageController();
  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
    controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        unselectedIconTheme: const IconThemeData(color: Colors.white),
        selectedItemColor: AppColors.kThirdPrimaryColor,
        backgroundColor: AppColors.kDarkBlueColor,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,

        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.align_horizontal_left),
            label: "",
          ),
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "",
          ),
          const BottomNavigationBarItem(icon: Icon(Icons.list), label: ""),
          const BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
        ],
        onTap: onItemTapped,
        ),

        body: PageView.builder(
        itemCount: pages.length,
        controller: controller,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        itemBuilder: (context, index) {
          return pages[currentIndex];
        },
      ),
    );
  }
}
