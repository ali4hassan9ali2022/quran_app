import 'package:flutter/material.dart';
import 'package:quran_app/Core/Utils/app_colors.dart';
import 'package:quran_app/Featured/Play/Widgets/custom_tools_play_music_item.dart';

class CustomToolsPlayMusic extends StatelessWidget {
  const CustomToolsPlayMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 46,
      decoration: BoxDecoration(
        color: AppColors.kLightWhiteColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomToolsPlayMusicItme(
            iconData: Icons.favorite_outline,
            text: "Like",
          ),
          CustomToolsPlayMusicItme(
            iconData: Icons.playlist_add,
            text: "playlist",
          ),
          CustomToolsPlayMusicItme(
            iconData: Icons.file_download_done_outlined,
            text: "download",
          ),
          CustomToolsPlayMusicItme(
            iconData: Icons.more_vert_outlined,
            text: "more",
          ),
        ],
      ),
    );
  }
}
