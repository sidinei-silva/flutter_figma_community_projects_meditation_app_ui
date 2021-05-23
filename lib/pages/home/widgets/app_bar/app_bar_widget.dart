import 'package:flutter/material.dart';
import 'package:meditation_app_ui_882888114457713282/core/app_images.dart';
import 'package:meditation_app_ui_882888114457713282/core/app_text_styles.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(120),
          child: SafeArea(
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Silent",
                    style: AppTextStyles.logoTitle,
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    AppImages.logo,
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Moon",
                    style: AppTextStyles.logoTitle,
                  )
                ],
              ),
            ),
          ),
        );
}
