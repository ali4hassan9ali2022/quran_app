import 'package:flutter/material.dart';
import 'package:quran_app/Core/Widgets/custom_background.dart';
import 'package:quran_app/Featured/Play/Widgets/custom_app_bar_play.dart';
import 'package:quran_app/Featured/Play/Widgets/play_music_view_body.dart';

class PlayView extends StatelessWidget {
  const PlayView({super.key});
  static String id = "PlayView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBarPlay(),
      body: CustomBackground(child: PlayViewBody()),
    );
  }
}
