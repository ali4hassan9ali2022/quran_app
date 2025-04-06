import 'package:flutter/material.dart';
import 'package:quran_app/Core/Utils/app_styles.dart';


class CustomTestHomeView extends StatelessWidget {
  const CustomTestHomeView({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34),
      child: Text(text, style: AppStyles.styleMedium18(context)),
    );
  }
}
