import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sp1_e_commerce/core/data/repository/shared_prefrence_repository.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/intro_view/intro_view.dart';
import 'package:sp1_e_commerce/ui/views/landing_view/landing_view.dart';
import 'package:sp1_e_commerce/ui/views/main_view/main_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  //!  Navigator.pushAndRemoveUntil =>  Get.offAll(page)
  //* Navigator.push(context, route) =>  Get.to(page)
  //? Navigator.pushReplacement(context, route) =>  Get.off(page)
  //todo Navigator.pop(context) =>  Get.back()

  @override
  void initState() {
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/pngs/socialhub.png',
            fit: BoxFit.fitWidth,
            width: size.width,
          ),
          /*Center(
              child: Image.asset(
            'assets/images/pngs/logo.png',
            width: size.width / 1.5,
            height: size.width / 1.5,
          )), */
        ],
      ),
    ));
  }
}
