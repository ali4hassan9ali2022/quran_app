import 'package:flutter/material.dart';
import 'package:quran_app/Core/Utils/app_styles.dart';


class CustomToolsPlayMusicItme extends StatelessWidget {
  const CustomToolsPlayMusicItme({
    super.key,
    required this.iconData,
    required this.text,
  });
  final IconData iconData;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, color: Colors.white),
        const SizedBox(height: 3),
        Text(text, style: AppStyles.styleMedium8(context)),
      ],
    );
  }
}
