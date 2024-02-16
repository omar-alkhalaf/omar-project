import 'package:get/get.dart';
import 'package:sp1_e_commerce/core/data/models/club_model.dart';
import 'package:sp1_e_commerce/core/data/repository/club_repository.dart';

import '../../../shared/custom_widgets/custom_toast.dart';

class detailsController extends GetxController {
  RxList<clubModel> allList = <clubModel>[].obs;
  @override
  void onInit() {
    getAllClubs();
    super.onInit();
  }

  void getAllClubs() async {
    await ClubRepository().getAllClubs().then((value) {
      value.fold((l) {
        CustomToast.showMessage(message: l.toString(), type: MessageType.ERROR);
      }, (r) {
        allList.addAll(r);
      });
    });
  }
}
