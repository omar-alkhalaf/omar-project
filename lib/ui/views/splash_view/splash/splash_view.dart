import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/splash_view/splash/splash_controller.dart';

class splashView extends StatefulWidget {
  const splashView({super.key});

  @override
  State<splashView> createState() => _splashViewState();
}

class _splashViewState extends State<splashView> {
  SplashController controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "assets/images/pngs/logl1.png",
                width: screenWidth(1),
                height: screenHeight(3.5),
              ),
            ),
            SizedBox(
              height: screenHeight(40),
            ),
            Obx(() {
              return controller.isOnline.value
                  ? Text(
                      "Alkaramah FC",
                      style: TextStyle(
                          fontSize: screenWidth(15),
                          fontWeight: FontWeight.bold,
                          color: AppColors.blue2Color),
                    )
                  : Column(
                      children: [
                        Text(
                          "there is no internet connection ",
                          style: TextStyle(fontSize: screenWidth(20)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: screenHeight(20)),
                          child: ElevatedButton(
                              onPressed: () {
                                controller.isOnline.value;
                              },
                              child: Text("try again")),
                        )
                      ],
                    );
            }),
          ],
        )),
      ),
    );
  }
}
