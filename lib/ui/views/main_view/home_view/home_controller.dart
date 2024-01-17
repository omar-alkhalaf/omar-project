import 'package:get/get.dart';
import 'package:sp1_e_commerce/core/services/connectivity_service.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class HomeController extends GetxController {
  RxBool isOnline = true.obs;

  @override
  void onInit() {
    checkConnection();
    super.onInit();
  }

  void checkConnection() {
    connectivityService.connectivityStatusController.stream.listen((event) {
      isOnline.value = event == ConnectivityStatus.ONLINE;
    });

    // if (event == ConnectivityStatus.ONLINE)
    //   isOnline.value = true;
    // else
    //   isOnline.value = false;
  }
}
