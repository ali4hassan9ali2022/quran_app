import 'package:flutter/material.dart';
import 'package:quran_app/Core/Models/songs_model.dart';
import 'package:quran_app/Core/Utils/app_styles.dart';

class CustomCardItem extends StatefulWidget {
  const CustomCardItem({super.key, required this.cardModel});
  final SongsModel cardModel;
  @override
  State<CustomCardItem> createState() => _CustomCardItemState();
}

class _CustomCardItemState extends State<CustomCardItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(widget.cardModel.image),
      ),
      title: Text(
        widget.cardModel.title,
        style: AppStyles.styleMedium15(context),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Text(
          widget.cardModel.subTitle,
          style: AppStyles.styleMedium12(context),
        ),
      ),
      trailing: IconButton(
        onPressed: () {
          // if (widget.cardModel.isActive == true) {
          //   setState(() {
          //     widget.cardModel.isActive = false;
          //   });
          // } else {
          //   setState(() {
          //     widget.cardModel.isActive = true;
          //   });
          // }
        },
        icon:const Icon(
          Icons.favorite 
        ),
      ),
    );
  }
}
