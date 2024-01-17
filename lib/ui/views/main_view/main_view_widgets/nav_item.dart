import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';

class NavItem extends StatelessWidget {
  final IconData icon;
  final bool? isSelected;
  final Function onTap;
  
  const NavItem(
      {super.key,
      required this.icon,
      this.isSelected = false,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: isSelected!
                    ? BorderSide(width: 3, color: AppColors.orangeColor)
                    : BorderSide.none)),
        child: Icon(
          icon,
          size: 50,
          color: isSelected! ? AppColors.orangeColor : AppColors.whiteColor,
        ),
      ),
    );
  }
}
