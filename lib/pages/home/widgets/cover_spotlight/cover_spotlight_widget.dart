import 'package:flutter/material.dart';
import 'package:meditation_app_ui_882888114457713282/core/app_colors.dart';
import 'package:meditation_app_ui_882888114457713282/core/app_images.dart';
import 'package:meditation_app_ui_882888114457713282/core/app_text_styles.dart';

class CoverSpotlightWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      decoration: BoxDecoration(
        color: AppColors.darkGrey,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(AppImages.backgroundSpotligtht),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    "Daily Thought",
                    style: AppTextStyles.headingWhite18,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    "Meditation • 3-10 Min".toUpperCase(),
                    style: AppTextStyles.headingWhite11,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(), primary: AppColors.white),
              child: Container(
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Icon(
                  Icons.play_arrow_rounded,
                  color: AppColors.darkGray,
                ),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
