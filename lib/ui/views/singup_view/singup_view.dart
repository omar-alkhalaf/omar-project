import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/core/data/models/user_info.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_text_field.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/intro_view/intro_view.dart';

class SingupView extends StatefulWidget {
  const SingupView({super.key});

  @override
  State<SingupView> createState() => _SingupViewState();
}

class _SingupViewState extends State<SingupView> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController usernameController =
      TextEditingController(text: 'malek@gmail.com');
  TextEditingController passwordController =
      TextEditingController(text: 'P@ssw0rd');
  TextEditingController confirmPasswordController =
      TextEditingController(text: 'P@ssw0rd');

  UserInfo user = UserInfo(email: 'malkek@,asd');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.orangeColor,
        body: Form(
            key: formKey,
            child: Column(
              children: [
                CustomTextFeild(
                  hintText: 'Email',
                  controller: usernameController,
                  validator: ((value) {
                    //!-- value = usernameController.text
                    if (value!.isEmpty)
                      return "Please enter  email";
                    else if (!isEmailValid(value))
                      return "Please enter valid email";
                  }),
                ),
                CustomTextFeild(
                  hintText: 'Password',
                  controller: passwordController,
                  validator: ((value) {
                    if (value!.isEmpty)
                      return "Please enter password :)";
                    else if (!isValidPassword(value))
                      return "Please enter valid password :)";
                  }),
                ),
                CustomTextFeild(
                  hintText: 'Confirm passowrd',
                  controller: confirmPasswordController,
                  validator: ((value) {
                    if (value != passwordController.text)
                      return "Confirm password not match";
                  }),
                ),
                InkWell(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      //* Here to make api request
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => IntroView(),
                          ));
                    }
                  },
                  child: Text(
                    'Singup',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
