import 'package:flutter/material.dart';
import 'package:quran_app/Core/Models/songs_model.dart';
import 'package:quran_app/Core/Utils/app_styles.dart';


class CustomSongsDetailsItem extends StatelessWidget {
  const CustomSongsDetailsItem({
    super.key,
    required this.onTap,
    required this.songsModel,
  });
  final void Function() onTap;
  final SongsModel songsModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSongsImage(songsModel: songsModel),
          const SizedBox(height: 9),
          Text(songsModel.title, style: AppStyles.styleMedium15(context)),
          const SizedBox(height: 4),
          Text(songsModel.subTitle, style: AppStyles.styleMedium12(context)),
        ],
      ),
    );
  }
}

class CustomSongsImage extends StatelessWidget {
  const CustomSongsImage({super.key, required this.songsModel});
  final SongsModel songsModel;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        songsModel.image,
        fit: BoxFit.cover,
        height: 151,
        width: 151,
      ),
    );
  }
}
