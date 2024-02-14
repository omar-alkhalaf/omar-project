import 'package:flutter/material.dart';

import '../colors.dart';
import '../utils.dart';

class customContainerResults extends StatelessWidget {
  final double? edge;
  const customContainerResults({super.key, this.edge});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(15),
      height: screenHeight(6),
      decoration: BoxDecoration(
          color: AppColors.greyColor,
          borderRadius: BorderRadius.circular(edge ?? 0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenHeight(90)),
                child: Image.asset('assets/images/pngs/alwthbeh.png'),
              ),
              SizedBox(
                // width: screenWidth(10),
                height: screenHeight(190),
              ),
              Text(
                "الوثبة",
                style: TextStyle(fontSize: screenWidth(20)),
              ),
            ],
          ),
          // SizedBox(
          //   width: screenWidth(10),
          //   height: screenHeight(10),
          // ),
          Column(
            children: [
              // SizedBox(
              //   height: screenHeight(10),
              // ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: screenHeight(20),
              ),
              Text(
                "الملعب البلدي",
                style: TextStyle(fontSize: screenWidth(25)),
              ),
              // SizedBox(
              //   height: screenHeight(90),
              // ),
              Text(
                "السبت 12/2 12:12 م",
                style: TextStyle(
                    fontSize: screenWidth(22), fontWeight: FontWeight.w700),
              )
            ],
          ),
          Column(
            children: [
              // SizedBox(
              //   height: screenHeight(10),
              // ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenHeight(90)),
                child: Image.asset('assets/images/pngs/alwthbeh.png'),
              ),
              SizedBox(
                // width: screenWidth(10),
                height: screenHeight(190),
              ),
              Text(
                "الوثبة",
                style: TextStyle(fontSize: screenWidth(20)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
