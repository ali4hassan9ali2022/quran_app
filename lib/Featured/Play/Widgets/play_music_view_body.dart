import 'package:flutter/material.dart';
import 'package:quran_app/Featured/Play/Widgets/custom_button_controllor_play_music.dart';
import 'package:quran_app/Featured/Play/Widgets/custom_play_music.dart';
import 'package:quran_app/Featured/Play/Widgets/custom_songs_datails.dart';
import 'package:quran_app/Featured/Play/Widgets/custom_tools_play_music.dart';

class PlayViewBody extends StatelessWidget {
  const PlayViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 98),
          const CustomSongsDetailsPlayMusic(),
          const SizedBox(height: 28),
          CustomButtonControllorPlayMusic(value: 0.6, onChanged: (p0) {}),
          const SizedBox(height: 7),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 89),
            child: CustomToolsPlayMusic(),
          ),
          const SizedBox(height: 32),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 34),
            child: CustomPlayMusic(),
          ),
        ],
      ),
    );
  }
}
