import 'package:flutter/material.dart';

import 'package:meditation_app_ui_882888114457713282/core/app_colors.dart';
import 'package:meditation_app_ui_882888114457713282/core/app_images.dart';
import 'package:meditation_app_ui_882888114457713282/core/app_text_styles.dart';

class CardRecomendedWidget extends StatelessWidget {
  final String type;
  final String title;
  final String category;
  final String time;

  CardRecomendedWidget({
    Key? key,
    required this.type,
    required this.title,
    required this.category,
    required this.time,
  })  : assert([
          "Focus_Meditation",
          "Happiness_Meditation",
        ].contains(type)),
        super(key: key);

  final config = {
    "Focus_Meditation": {
      "color": AppColors.green,
      "image": AppImages.focusMeditation,
    },
    "Happiness_Meditation": {
      "color": AppColors.lightOrange,
      "image": AppImages.happinessMeditation,
    },
  };

  get color => config[type]!['color']!;
  get image => config[type]!['image']!;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 162,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 113.5,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(image),
                ),
              ),
            ),
            Text(
              title,
              style: AppTextStyles.headingDark18,
            ),
            Text(
              "$category • $time".toUpperCase(),
              style: AppTextStyles.headingGray11,
            )
          ],
        ),
      ),
    );
  }
}
