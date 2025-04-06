import 'package:flutter/material.dart';
import 'package:quran_app/Core/Utils/app_colors.dart';
import 'package:quran_app/Core/Utils/app_styles.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.kB1lueColor,
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 24, right: 4),
          child: Icon(Icons.search, color: Colors.white, size: 17),
        ),
        border: outlineInputBorder(),
        enabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(),
        hintText: "Search Song",
        hintStyle: AppStyles.styleRegular12(context),
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(borderRadius: BorderRadius.circular(50));
}
