import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'dart:async';

import 'package:meditation_app_ui_882888114457713282/core/app_colors.dart';
import 'package:meditation_app_ui_882888114457713282/core/app_images.dart';
import 'package:meditation_app_ui_882888114457713282/core/app_text_styles.dart';

class CardSpotlightWidget extends StatelessWidget {
  final String type;
  final String title;
  final String category;
  final String time;

  CardSpotlightWidget({
    Key? key,
    required this.type,
    required this.title,
    required this.category,
    required this.time,
  })  : assert(
          ["Basics_Course", "Relaxation_Music"].contains(type),
        ),
        super(key: key);

  final config = {
    "Basics_Course": {
      "color": AppColors.purple,
      "image": AppImages.heartRelax,
      "titleStyle": AppTextStyles.headingLight18,
      "categoryStyle": AppTextStyles.headingLight11,
      "buttonColor": AppColors.iceWhite,
      "buttonText": AppTextStyles.buttonDark12,
    },
    "Relaxation_Music": {
      "color": AppColors.darkOrange,
      "image": AppImages.relaxationMusic,
      "titleStyle": AppTextStyles.headingDark18,
      "categoryStyle": AppTextStyles.headingDark11,
      "buttonColor": AppColors.darkGray,
      "buttonText": AppTextStyles.buttonLight12,
    },
  };

  get color => config[type]!['color']!;
  get image => config[type]!['image']!;
  get titleStyle => config[type]!['titleStyle']!;
  get categoryStyle => config[type]!['categoryStyle']!;
  get buttonColor => config[type]!['buttonColor']!;
  get buttonText => config[type]!['buttonText']!;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 177,
      height: 210,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              constraints: BoxConstraints(maxHeight: 87, minHeight: 87),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: AssetImage(image),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: titleStyle,
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Text(
                      category.toUpperCase(),
                      style: categoryStyle,
                    ),
                  ],
                ),
                SizedBox(
                  height: 27,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "3-10 Min".toUpperCase(),
                      style: categoryStyle,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 10,
                        ),
                        child: Text(
                          "Start".toUpperCase(),
                          style: buttonText,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
