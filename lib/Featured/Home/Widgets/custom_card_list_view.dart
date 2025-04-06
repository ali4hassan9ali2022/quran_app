import 'package:flutter/material.dart';
import 'package:quran_app/Core/Models/card_model.dart';
import 'package:quran_app/Core/Utils/assets.dart';
import 'package:quran_app/Featured/Home/Widgets/custom_card_item.dart';

class CustomCardListView extends StatelessWidget {
  const CustomCardListView({super.key,required this.onTap});
  final void Function(int index) onTap;
  static List<CardModel> items = [
    CardModel(
      isActive: false,
      image: Assets.imagesQu1,
      title: "محمد",
      subTitle: "عبد كامل",
    ),
    CardModel(
      isActive: false,
      image: Assets.imagesQu2,
      title: "المائدة",
      subTitle: "ياسر الدوسرى ",
    ),
    CardModel(
      isActive: false,
      image: Assets.imagesQu3,
      title: "ق",
      subTitle: "عبدالله كامل",
    ),
    // CardModel(
    //   isActive: false,
    //   image: Assets.imagesQu2,
    //   title: "يس",
    //   subTitle: "عبدالله كامل",
    // ),
    // CardModel(
    //   isActive: false,
    //   image: Assets.imagesQu1,
    //   title: "الرحمن",
    //   subTitle: "عبدالله كامل",
    // ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            onTap(index);
          },
          child: CustomCardItem(cardModel: items[index])
          );
      },
    );
  }
}
