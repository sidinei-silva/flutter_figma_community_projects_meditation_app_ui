import 'package:flutter/material.dart';
import 'package:meditation_app_ui_882888114457713282/core/app_colors.dart';
import 'package:meditation_app_ui_882888114457713282/core/app_images.dart';
import 'package:meditation_app_ui_882888114457713282/core/app_text_styles.dart';
import 'package:meditation_app_ui_882888114457713282/pages/home/widgets/app_bar/app_bar_widget.dart';
import 'package:meditation_app_ui_882888114457713282/pages/home/widgets/card_spotlight/card_spotlight_widget.dart';
import 'package:meditation_app_ui_882888114457713282/pages/home/widgets/cover_spotlight/cover_spotlight_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good Morning, Sidinei",
              style: AppTextStyles.heading28,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "We Wish you have a good day",
                style: AppTextStyles.headingLigthGrey20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardSpotlightWidget(
                    type: "Basics_Course",
                    title: "Basics",
                    category: "Course",
                    time: "3-10 min",
                  ),
                  CardSpotlightWidget(
                    type: "Relaxation_Music",
                    title: "Relaxation",
                    category: "Music",
                    time: "3-10 min",
                  ),
                ],
              ),
            ),
            CoverSpotlightWidget()
          ],
        ),
      ),
    );
  }
}
