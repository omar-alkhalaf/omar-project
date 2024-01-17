import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sp1_e_commerce/app/my_app.dart';
import 'package:sp1_e_commerce/core/data/repository/auth_repository.dart';
import 'package:sp1_e_commerce/core/data/repository/shared_prefrence_repository.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_toast.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/main_view/main_view.dart';

class LoginController extends GetxController {
  TextEditingController usernameController = TextEditingController(

      //text: 'mor_2314'

      );
  TextEditingController passwordController = TextEditingController(

      //  text: '83r5^_'

      );

  String userName = 'User@gmail.com';
  String password = 'P@ssw0rd';

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  RxBool isLoading = false.obs;

  bool isChecked = false;

  @override
  void onInit() {
    // if (SharedPrefrenceRepository().getLogginInfo().isNotEmpty) {
    //   isChecked = true;
    //   usernameController.text = SharedPrefrenceRepository().getLogginInfo()[0];
    //   passwordController.text = SharedPrefrenceRepository().getLogginInfo()[1];
    // }
    super.onInit();
  }

  void login() {
    if (formKey.currentState!.validate()) {
      //* Here to make api request

      isLoading.value = true;

      AuthRepository()
          .login(
              username: usernameController.text,
              password: passwordController.text)
          .then((value) {
        isLoading.value = false;

        value.fold((l) {
          CustomToast.showMessage(
            message: l,
          );
        }, (r) {
          storege.setTokenInfo(r);
          Get.to(MainView());
        });
      });
    }
  }

  void changeLanguage(String code) {
    SharedPrefrenceRepository().setAppLnaguage(code);
    Get.updateLocale(getLocal());
  }
}
