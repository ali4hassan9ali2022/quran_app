import 'package:flutter/material.dart';
import 'package:quran_app/Featured/Home/Widgets/custom_card_item.dart';
import 'package:quran_app/constents.dart';

class CustomCardListView extends StatelessWidget {
  const CustomCardListView({super.key, required this.onTap});
  final void Function(int index) onTap;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Constents.items.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            onTap(index);
          },
          child: CustomCardItem(cardModel: Constents.items[index]),
        );
      },
    );
  }
}
