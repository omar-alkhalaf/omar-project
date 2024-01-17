import 'package:get/get.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/landing_view/landing_view.dart';

class IntroController extends GetxController {
  List<String> descriptions = [
    'Life is a succession of lessons which must be lived to be understood.',
    'You come into the world with nothing, and the purpose of your life is to make something out of nothing.',
    ' Life is what happens while you are busy making other plans.'
  ];
  List<String> images = ['bag', 'mobile', 'truck'];

  RxInt index = 0.obs;

  @override
  void onInit() {
    storege.setFirstLunch(false);
    super.onInit();
  }

  void changeDescription() {
    if (index.value == descriptions.length - 1)
      Get.to(LandingView());
    else if (index.value < descriptions.length - 1) index.value++;
  }

  void skip() {
    Get.to(LandingView(), transition: Transition.zoom);
  }
}
