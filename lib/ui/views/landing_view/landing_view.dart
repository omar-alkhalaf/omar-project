import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';
import 'package:sp1_e_commerce/core/data/repository/shared_prefrence_repository.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/login_view/login_view.dart';
import 'package:sp1_e_commerce/ui/views/map_view/map_view.dart';
import 'package:sp1_e_commerce/ui/views/singup_view/singup_view.dart';

class LandingView extends StatelessWidget {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.redColor,
      body: Column(
        children: [
          InkWell(
              onTap: () async {
                LocationData? currenLocation =
                    await locationService.getCurrentLocation(showLoader: true);

                print(currenLocation);
                if (currenLocation != null)
                  Get.to(MapView(currentLocation: currenLocation));
              },
              child: Container(
                width: 300,
                height: 40,
                color: AppColors.blueColor,
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 25),
                ),
              )),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SingupView(),
                  ));
            },
            child: Container(
              width: 300,
              height: 40,
              child: Text(
                'Singup',
                style: TextStyle(fontSize: 25),
              ),
              color: AppColors.orangeColor,
            ),
          )
        ],
      ),
    ));
  }
}
