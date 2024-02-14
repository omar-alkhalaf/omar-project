import 'package:get/get.dart';

import '../../../../core/services/connectivity_service.dart';
import '../../../shared/utils.dart';

class SplashController extends GetxController {
  RxBool isOnline = true.obs;

  @override
  void onInit() {
    super.onInit();
    checkConnection();
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

  void reload() {
    onInit();
  }
}
