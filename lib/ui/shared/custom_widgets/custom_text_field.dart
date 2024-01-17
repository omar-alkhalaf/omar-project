import 'package:flutter/material.dart';

import 'package:sp1_e_commerce/ui/shared/colors.dart';

class CustomTextFeild extends StatelessWidget {
  final IconData? preIcon;
  final IconData? sufIcon;
  final String hintText;
  final Color? suffColor;
  final Color? preColor;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const CustomTextFeild(
      {super.key,
      this.preIcon,
      required this.hintText,
      this.sufIcon,
      this.suffColor,
      this.preColor = AppColors.blueColor,
      this.controller,
      this.validator});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return TextFormField(
      controller: controller,
      validator: validator,
      style: TextStyle(
        color: AppColors.whiteColor,
        fontSize: size.width / 18,
      ),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: size.width / 20),
          fillColor: AppColors.blackColor,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppColors.whiteColor,
            fontSize: size.width / 18,
          ),
          errorStyle: TextStyle(
            color: AppColors.blackColor,
            fontSize: size.width / 18,
          ),

          //labelText: 'Email Address',
          prefixIcon: preIcon != null
              ? Icon(
                  preIcon,
                  color: preColor!,
                )
              : SizedBox(),
          suffixIcon: sufIcon != null
              ? Icon(
                  sufIcon,
                  color: suffColor,
                )
              : SizedBox()),
    );
  }
}
