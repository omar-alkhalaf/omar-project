import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_player_info.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

import '../Match details/match_details_controller.dart';

class omarView extends StatefulWidget {
  const omarView({super.key});

  @override
  State<omarView> createState() => _omarViewState();
}

class _omarViewState extends State<omarView> {
  detailsController controller = Get.put(detailsController());

  int index = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            height: screenHeight(1.5),
            width: screenWidth(1.2),
            child: Image.network(controller.allList[index].logo ?? ""),
          );
        },
      )),
    );
  }
}
