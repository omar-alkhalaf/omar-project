import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sp1_e_commerce/core/data/repository/prodcut_repository.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/main_view/home_view/home_controller.dart';

class HomeView extends StatefulWidget {
  final Function openDrawer;
  const HomeView({super.key, required this.openDrawer});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool showOption = false;

  File? selecteImage;

  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          setState(() {
            showOption = false;
          });
        },
        child: Column(
          children: [
            Obx(() {
              return Icon(
                controller.isOnline.value ? Icons.wifi : Icons.wifi_off,
                color: controller.isOnline.value ? Colors.green : Colors.red,
                size: 60,
              );
            }),
            Stack(
              children: [
                InkWell(
                  onTap: selecteImage == null //! user not choose image
                      ? () {
                          // setState(() {
                          //   showOption = true;
                          // });
                          ProductRepository().getAllCategory();
                        }
                      : null,
                  child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: AppColors.blueColor,
                        borderRadius: BorderRadius.circular(50),
                        image: selecteImage != null
                            ? DecorationImage(
                                image: FileImage(selecteImage!),
                                fit: BoxFit.cover)
                            : null,
                      ),
                      child: selecteImage == null
                          ? Center(
                              child: Icon(
                                Icons.person,
                                size: 50,
                              ),
                            )
                          : null),
                ),
                if (selecteImage != null)
                  InkWell(
                    onTap: () {
                      setState(() {
                        showOption = !showOption;
                      });
                    },
                    child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColors.blueColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.edit)),
                  )
              ],
            ),
            if (showOption)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () async {
                      showOption = false;

                      XFile? selectImage =
                          await chooseImage(ImageSource.gallery);

                      selecteImage = File(selectImage!.path);
                      setState(() {});
                    },
                    child: Container(
                      color: AppColors.blueColor,
                      child: Center(
                        child: Text(
                          'Gallery',
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    onTap: () async {
                      showOption = false;
                      XFile? selectImage =
                          await chooseImage(ImageSource.camera);

                      selecteImage = File(selectImage!.path);
                      setState(() {});
                    },
                    child: Container(
                      color: AppColors.blueColor,
                      child: Center(
                        child: Text(
                          'Camera',
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                    ),
                  ),
                  if (selecteImage != null)
                    InkWell(
                      onTap: () async {
                        selecteImage = null;
                        showOption = false;
                        setState(() {});
                      },
                      child: Container(
                        color: AppColors.blueColor,
                        child: Center(
                          child: Text(
                            'Delete',
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    )
                ],
              )
          ],
        ),
      ),
    );
  }
}
