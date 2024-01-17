import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:sp1_e_commerce/app/my_app.dart';
import 'package:sp1_e_commerce/core/data/models/user_info.dart';
import 'package:sp1_e_commerce/core/data/repository/auth_repository.dart';
import 'package:sp1_e_commerce/core/data/repository/shared_prefrence_repository.dart';
import 'package:sp1_e_commerce/core/translation/app_translation.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_text_field.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/login_view/login_controller.dart';
import 'package:sp1_e_commerce/ui/views/main_view/main_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginController controller = Get.put(LoginController());


  UserInfo user = UserInfo(email: 'mmama');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Form(
          key: controller.formKey,
          child: Column(children: [
            CustomTextFeild(
              hintText: tr('key_email'),
              controller: controller.usernameController,
              validator: (value) {
                //!-- value = usernameController.text
                if (value!.isEmpty) return tr('key_email_message');
                // else if (!isEmailValid(value))
                //   return "Please enter valid email";
              },
            ),
            SizedBox(
              height: screenWidth(100),
            ),
            CustomTextFeild(
              hintText: tr('key_password'),
              controller: controller.passwordController,
              validator: (value) {
                if (value!.isEmpty) return tr('key_password_message');
                // else if (!isValidPassword(value))
                //   return "Please enter valid password :)";
              },
            ),
            SizedBox(
              height: screenWidth(50),
            ),
            Row(
              children: [
                Checkbox(
                    value: controller.isChecked,
                    onChanged: ((p0) {
                      setState(() {
                        controller.isChecked = p0!;
                      });
                    })),
                Text('Remmberme')
              ],
            ),
            Obx(() {
              return controller.isLoading.value
                  ? SpinKitCircle(
                      color: AppColors.orangeColor,
                    )
                  : InkWell(
                      onTap: () {
                        controller.login();
                      },
                      child: Text(
                        tr('key_login'),
                        style: TextStyle(fontSize: 40),
                      ),
                    );
            }),
            SizedBox(
              height: screenWidth(10),
            ),
            InkWell(
              onTap: () {
                controller.changeLanguage('en');
              },
              child: Text(
                'English',
                style: TextStyle(fontSize: screenWidth(10)),
              ),
            ),
            InkWell(
              onTap: () {
                controller.changeLanguage('ar');
              },
              child: Text(
                'العربية',
                style: TextStyle(fontSize: screenWidth(10)),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
