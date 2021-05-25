import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app_ui_882888114457713282/core/app_colors.dart';
import 'package:meditation_app_ui_882888114457713282/core/app_icons.dart';
import 'package:meditation_app_ui_882888114457713282/core/app_text_styles.dart';

class BottomNavigationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        selectedLabelStyle: AppTextStyles.bottomNavigation,
        unselectedLabelStyle: AppTextStyles.bottomNavigation,
        selectedItemColor: AppColors.purple,
        unselectedItemColor: AppColors.ligthGray,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: SvgPicture.asset(AppIcons.home),
            activeIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Container(
                width: 46,
                height: 46,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.purple,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: SvgPicture.asset(AppIcons.home),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Sleep",
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 17),
              child: SvgPicture.asset(AppIcons.sleep),
            ),
          ),
          BottomNavigationBarItem(
            label: "Meditate",
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 17),
              child: SvgPicture.asset(AppIcons.meditate),
            ),
          ),
          BottomNavigationBarItem(
            label: "Music",
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 17),
              child: SvgPicture.asset(AppIcons.music),
            ),
          ),
          BottomNavigationBarItem(
            label: "Sidinei",
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 17),
              child: SvgPicture.asset(AppIcons.person),
            ),
          ),
        ],
      ),
    );
  }
}
