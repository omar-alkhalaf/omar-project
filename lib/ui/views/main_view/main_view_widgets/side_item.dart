import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';

class SideItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;
  final bool? needClose;
  const SideItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap,
      this.needClose = true});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
        if (needClose!) Navigator.pop(context);
      },
      child: Row(
        children: [
          Icon(
            icon,
            size: 50,
            color: AppColors.orangeColor,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
