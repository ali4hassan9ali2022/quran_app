import 'package:flutter/material.dart';
import 'package:quran_app/Core/Utils/app_colors.dart';
import 'package:quran_app/Core/Utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleBold50(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 50),
      fontWeight: FontWeight.bold,
      fontFamily: "Orbitron",
      color: const Color(0xffffffff),
    );
  }
  static TextStyle styleMedium15(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 15),
      fontWeight: FontWeight.w500,
      fontFamily: "Orbitron",
      color: const Color(0xffffffff),
    );
  }
  static TextStyle styleMedium18(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w500,
      fontFamily: "Orbitron",
      color: const Color(0xffffffff),
    );
  }
  static TextStyle styleRegular12(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      fontFamily: "Orbitron",
      color: const Color(0xffffffff).withOpacity(0.6),
    );
  }
  static TextStyle styleMedium12(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w500,
      fontFamily: "Orbitron",
      color: AppColors.kB1lueColor,
    );
  }
  static TextStyle styleMedium8(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 8),
      fontWeight: FontWeight.w500,
      fontFamily: "Orbitron",
      color: AppColors.kWhiteColor,
    );
  }
}


// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
