import 'package:flutter/material.dart';

import '../colors.dart';
import '../utils.dart';

class customLinearResult extends StatelessWidget {
  final String text;
  final double value;

  const customLinearResult(
      {super.key, required this.text, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(text),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: screenWidth(50),
              ),
              Text("5"),
              SizedBox(
                width: screenWidth(50),
              ),
              Expanded(
                child: LinearProgressIndicator(
                  value: value,
                  backgroundColor: AppColors.orangeColor,
                  valueColor:
                      AlwaysStoppedAnimation<Color>(AppColors.blue2Color),
                  // semanticsValue: "omar",
                  // semanticsLabel: "omar",
                ),
              ),
              SizedBox(
                width: screenWidth(50),
              ),
              Text("5"),
              SizedBox(
                width: screenWidth(50),
              ),
            ],
          )
        ],
      ),
    );
  }
}
