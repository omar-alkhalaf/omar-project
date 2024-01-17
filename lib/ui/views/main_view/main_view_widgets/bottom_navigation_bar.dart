import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/views/main_view/main_view_widgets/nav_item.dart';

enum BottomNavigationEnum {
  HOME,
  FAVORITE,
  NOTIFICATIONS,
  SETTINGS,
}

class CustomNavigationBar extends StatelessWidget {
  final BottomNavigationEnum selected;
  final Function(BottomNavigationEnum,int) mainTap;

  const CustomNavigationBar(
      {super.key, required this.selected, required this.mainTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blackColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavItem(
            onTap: () {
              mainTap(BottomNavigationEnum.HOME,0);
            },
            icon: Icons.home_outlined,
            isSelected: selected == BottomNavigationEnum.HOME,
          ),
          NavItem(
            onTap: () {
              mainTap(BottomNavigationEnum.FAVORITE,1);
            },
            icon: Icons.favorite_outline,
            isSelected: selected == BottomNavigationEnum.FAVORITE,
          ),
          NavItem(
            onTap: () {
              mainTap(BottomNavigationEnum.NOTIFICATIONS,2);
            },
            icon: Icons.notifications_outlined,
            isSelected: selected == BottomNavigationEnum.NOTIFICATIONS,
          ),
          NavItem(
            onTap: () {
              mainTap(BottomNavigationEnum.SETTINGS,3);
            },
            icon: Icons.settings_outlined,
            isSelected: selected == BottomNavigationEnum.SETTINGS,
          ),
        ],
      ),
    );
  }
}
