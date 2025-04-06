import 'package:flutter/material.dart';
import 'package:quran_app/Core/Controllers/home_view_controller.dart';
import 'package:quran_app/Featured/Home/Widgets/custom_card_list_view.dart';
import 'package:quran_app/Featured/Home/Widgets/custom_songs_details_list_view.dart';
import 'package:quran_app/Featured/Home/Widgets/custom_text_field.dart';
import 'package:quran_app/Featured/Home/Widgets/custom_text_home_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 55),
          const Padding(
            padding: EdgeInsets.only(left: 31, right: 33),
            child: CustomTextField(),
          ),
          const SizedBox(height: 32),
          const CustomTestHomeView(text: "Recently Played"),
          const SizedBox(height: 32),
          CustomSongsDetailsListView(
            onTap: (index) {
              HomeViewController.navigateToPlayView(
                context: context,
                index: index,
              );
            },
          ),
          const SizedBox(height: 31),
          const CustomTestHomeView(text: "Recommanded music"),
          const SizedBox(height: 21),
          CustomCardListView(
            onTap: (index) {
              HomeViewController.navigateToPlayView(
                context: context,
                index: index,
              );
            },
          ),
        ],
      ),
    );
  }
}
