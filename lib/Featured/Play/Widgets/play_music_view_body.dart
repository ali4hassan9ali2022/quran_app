import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:quran_app/Core/Controllers/play_controller.dart';
import 'package:quran_app/Featured/Play/Widgets/custom_button_controllor_play_music.dart';
import 'package:quran_app/Featured/Play/Widgets/custom_play_music.dart';
import 'package:quran_app/Featured/Play/Widgets/custom_songs_datails.dart';
import 'package:quran_app/Featured/Play/Widgets/custom_tools_play_music.dart';
import 'package:quran_app/constents.dart';

class PlayViewBody extends StatefulWidget {
  const PlayViewBody({super.key});
  @override
  State<PlayViewBody> createState() => _PlayViewBodyState();
}

class _PlayViewBodyState extends State<PlayViewBody> {
  late int index;
  late PlayController _playController;
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    index = ModalRoute.of(context)!.settings.arguments as int;
    _playController = PlayController(index);
    _playController.initAudio();
  }

  @override
  void dispose() {
    super.dispose();
    _playController.disposeAudio();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 98),
          CustomSongsDetailsPlayMusic(items: Constents.items[index],),
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
