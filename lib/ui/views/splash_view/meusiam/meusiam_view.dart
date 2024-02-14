import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class meusiamView extends StatefulWidget {
  const meusiamView({super.key});

  @override
  State<meusiamView> createState() => _meusiamViewState();
}

class _meusiamViewState extends State<meusiamView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Container(
          width: screenWidth(2),
          height: screenHeight(2.5),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 180, 167, 167),
              borderRadius: BorderRadius.circular(20)),
          child: Stack(
            children: [
              Image.asset("assets/images/pngs/out.png"),
              Positioned(
                  top: screenHeight(3.2),
                  // left: screenWidth(21),
                  child: Container(
                    width: screenWidth(2),
                    height: screenHeight(12),
                    child: Image.asset(
                      "assets/images/pngs/out1.png",
                      fit: BoxFit.cover,
                    ),
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
