import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:sp1_e_commerce/core/services/connectivity_service.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class MyAppController extends GetxController {
  @override
  void onInit() async {
    ConnectivityResult result = await connectivity.checkConnectivity();
    connectivityService.connectivityStatusController
        .add(connectivityService.getStauts(result));

    connectivityService.connectivityStatusController.stream.listen((event) {
      isOnline = event == ConnectivityStatus.ONLINE;
    });

    super.onInit();
  }
}
