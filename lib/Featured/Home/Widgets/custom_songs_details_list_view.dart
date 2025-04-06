import 'package:flutter/material.dart';

import 'package:quran_app/Core/Models/songs_model.dart';
import 'package:quran_app/Core/Utils/assets.dart';
import 'package:quran_app/Featured/Home/Widgets/custom_songs_details_item.dart';


class CustomSongsDetailsListView extends StatelessWidget {
  const CustomSongsDetailsListView({super.key, required this.onTap});
  final void Function(int index) onTap;
  static const songs = [
    SongsModel(
      title: "سورة البقرة",
      subTitle: "عبدالله كامل",
      image: Assets.imagesQu1,
      path: "",
    ),
    SongsModel(
      title: "سورة ال عمران",
      subTitle: "عبدالله كامل",
      image: Assets.imagesQu2,
      path: "",
    ),
    SongsModel(
      title: "سورة طه",
      subTitle: "عبدالله كامل",
      image: Assets.imagesQu3,
      path: "",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(width: 17);
          },
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CustomSongsDetailsItem(
              songsModel: songs[index],
              onTap: () {
                onTap(index);
              },
            );
          },
          itemCount: songs.length,
        ),
      ),
    );
  }
}
