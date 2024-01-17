import 'package:get/get.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/intro_view/intro_view.dart';
import 'package:sp1_e_commerce/ui/views/landing_view/landing_view.dart';
import 'package:sp1_e_commerce/ui/views/main_view/main_view.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      Get.offAll(storege.getFirstLunch()
          ? IntroView()
          : storege.getLoggedIn()
              ? MainView()
              : LandingView());
    });

    super.onInit();
  }

  void reload() {
    onInit();
  }
}
