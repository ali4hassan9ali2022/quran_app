import 'package:flutter/material.dart';
import 'package:quran_app/Featured/Home/Widgets/custom_songs_details_item.dart';
import 'package:quran_app/constents.dart';

class CustomSongsDetailsListView extends StatelessWidget {
  const CustomSongsDetailsListView({super.key, required this.onTap});
  final void Function(int index) onTap;
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
              songsModel: Constents.items[index],
              onTap: () {
                onTap(index);
              },
            );
          },
          itemCount: Constents.items.length,
        ),
      ),
    );
  }
}
