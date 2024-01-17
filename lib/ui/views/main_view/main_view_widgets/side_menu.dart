import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/core/data/repository/shared_prefrence_repository.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/views/main_view/main_view_widgets/side_item.dart';
import 'package:sp1_e_commerce/ui/views/splash_view/splash_view.dart';

class SideMenu extends StatelessWidget {
  final Function afterClick;
  const SideMenu({super.key, required this.afterClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: AppColors.blueColor,
      child: Column(
        children: [
          SideItem(icon: Icons.abc, title: 'ABC', onTap: () {}),
          SideItem(
              icon: Icons.abc,
              title: 'Favorite',
              onTap: () {
                afterClick();
              }),
          SideItem(icon: Icons.abc, title: 'ABC', onTap: () {}),
          SideItem(icon: Icons.abc, title: 'ABC', onTap: () {}),
          SideItem(icon: Icons.abc, title: 'ABC', onTap: () {}),
          SideItem(icon: Icons.abc, title: 'ABC', onTap: () {}),
          SideItem(
              icon: Icons.usb_rounded,
              needClose: false,
              title: 'Logout',
              onTap: () {
                SharedPrefrenceRepository().setLoggedIn(false);
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return SplashView();
                  },
                ));
              }),
          // Text(
          //   'Orders',
          //   style: TextStyle(fontSize: 40),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // Text(
          //   'Cart',
          //   style: TextStyle(fontSize: 40),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // InkWell(
          //   onTap: () {
          //     //!----- Any
          //     Navigator.pop(context);
          //   },
          //   child: Text(
          //     'Aboutus',
          //     style: TextStyle(fontSize: 40),
          //   ),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // InkWell(
          //   onTap: () {

          //   },
          //   child: Text(
          //     'Logout',
          //     style: TextStyle(fontSize: 40),
          //   ),
          // ),
        ],
      ),
    );
  }
}
