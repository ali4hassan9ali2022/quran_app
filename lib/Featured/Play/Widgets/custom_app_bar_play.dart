import 'package:flutter/material.dart';
import 'package:quran_app/Core/Utils/app_styles.dart';


class CustomAppBarPlay extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarPlay({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      leading: const Icon(Icons.arrow_circle_left, color: Colors.white),
      title: Text("Now playing", style: AppStyles.styleMedium18(context)),
      actions: [
        const Icon(Icons.share, size: 20, color: Colors.white),
        const SizedBox(width: 27.69),
        const Icon(Icons.more_vert_rounded, size: 20, color: Colors.white),
        const SizedBox(width: 19.69),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
