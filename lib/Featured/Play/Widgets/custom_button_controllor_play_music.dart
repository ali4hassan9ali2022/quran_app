import 'package:flutter/material.dart';
import 'package:quran_app/Core/Utils/app_colors.dart';
import 'package:quran_app/Core/Utils/app_styles.dart';
import 'package:quran_app/Core/Utils/assets.dart';


class CustomButtonControllorPlayMusic extends StatelessWidget {
  const CustomButtonControllorPlayMusic({
    super.key,
    required this.value,
    required this.onChanged,
  });
  final double value;
  final Function(double) onChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(Assets.imagesRandom),
            Container(
              height: 36,
              width: 36,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(0, -1),
                  end: Alignment(0, 1),
                  colors: [
                    AppColors.kThirdPrimaryColor,
                    AppColors.kLightWhiteColor,
                  ],
                ),
                borderRadius: BorderRadius.circular(36),
              ),
              child: Image.asset(Assets.imagesBack),
            ),
            CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.kLightWhiteColor,
              child: Image.asset(Assets.imagesPause),
            ),
            Container(
              height: 36,
              width: 36,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(0, -1),
                  end: Alignment(0, 1),
                  colors: [
                    AppColors.kThirdPrimaryColor,
                    AppColors.kLightWhiteColor,
                  ],
                ),
                borderRadius: BorderRadius.circular(36),
              ),
              child: Image.asset(Assets.imagesNext),
            ),
            Image.asset(Assets.imagesLoop),
          ],
        ),
        const SizedBox(height: 29),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: SliderTheme(
            data: SliderThemeData(
              thumbShape: RoundSliderThumbShape(),
              overlayShape: SliderComponentShape.noOverlay,
            ),
            child: Slider(
              activeColor: AppColors.kLightWhiteColor,
              inactiveColor: AppColors.kLight3BlueColor,
              value: value,
              onChanged: onChanged,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("2:05", style: AppStyles.styleMedium12(context)),
              Text("3:45", style: AppStyles.styleMedium12(context)),
            ],
          ),
        ),
      ],
    );
  }
}

class RoundSliderThumbShape extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size(0.0, 0.0); // Adjust the size of the thumb
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;
    final Paint paint =
        Paint()
          ..color = AppColors.kLightWhiteColor
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 2.0;

    canvas.drawCircle(center, 3.0, paint); // Draw a circle as the thumb

    // TODO: implement paint
  }
}
