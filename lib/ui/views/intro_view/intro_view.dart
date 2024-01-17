import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sp1_e_commerce/core/data/repository/shared_prefrence_repository.dart';
import 'package:sp1_e_commerce/ui/views/intro_view/intro_controller.dart';
import 'package:sp1_e_commerce/ui/views/landing_view/landing_view.dart';

class IntroView extends StatefulWidget {
  const IntroView({super.key});

  @override
  State<IntroView> createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  IntroController controller = Get.put(IntroController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Obx(
      () {
        return Column(children: [
          Text(controller.descriptions[controller.index.value]),
          Image.asset(
              'assets/images/pngs/${controller.images[controller.index.value]}.png'),
          InkWell(
            onTap: () {
              controller.changeDescription();
            },
            child: Text(
              controller.index.value == controller.descriptions.length - 1
                  ? 'Finish'
                  : 'Next',
              style: TextStyle(fontSize: 31),
            ),
          ),
          DotsIndicator(
            dotsCount: controller.descriptions.length,
            position: controller.index.value,
          )
        ]);
      },
    )));
  }
}
