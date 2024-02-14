import 'package:flutter/material.dart';

import '../colors.dart';
import '../utils.dart';

class customPlayerInfo extends StatelessWidget {
  final Image playerImage;
  final String playerName;
  final String playerAge;
  final String playerPosition;
  final int playerLength;
  final int playerNum;

  customPlayerInfo(
      {super.key,
      required this.playerImage,
      required this.playerName,
      required this.playerAge,
      required this.playerPosition,
      required this.playerLength,
      required this.playerNum});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            top: screenHeight(7),
            child: Container(
              width: screenWidth(2.5),
              height: screenHeight(5),
              decoration: BoxDecoration(
                  color: AppColors.blueColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(200, 100),
                      topRight: Radius.elliptical(200, 100))),
              child: Column(
                children: [
                  // Image.asset(
                  //   "assets/images/pngs/player11.png",
                  //   fit: BoxFit.contain,
                  // ),
                  SizedBox(
                    height: screenHeight(10),
                  ),
                  Text(
                    playerName,
                    style: TextStyle(
                        color: AppColors.whiteColor, fontSize: screenWidth(18)),
                  ),
                  SizedBox(
                    height: screenHeight(90),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Stack(children: [
                            Image.asset(
                              "assets/images/pngs/white.png",
                              fit: BoxFit.contain,
                            ),
                            Positioned(
                                top: screenHeight(210),
                                left: screenWidth(40),
                                child: Text(playerPosition,
                                    style: TextStyle(
                                        fontSize: screenWidth(35),
                                        fontWeight: FontWeight.bold))),
                            Positioned(
                                top: screenHeight(60),
                                left: screenWidth(42),
                                child: Text(
                                  "المركز",
                                  style: TextStyle(
                                      fontSize: screenWidth(35),
                                      fontWeight: FontWeight.bold),
                                ))
                          ]),
                        ],
                      ),
                      Column(
                        children: [
                          Stack(children: [
                            Image.asset(
                              "assets/images/pngs/white.png",
                              fit: BoxFit.contain,
                            ),
                            Positioned(
                                top: screenHeight(210),
                                left: screenWidth(40),
                                child: Text(playerNum.toString(),
                                    style: TextStyle(
                                        fontSize: screenWidth(35),
                                        fontWeight: FontWeight.bold))),
                            Positioned(
                                top: screenHeight(60),
                                left: screenWidth(42),
                                child: Text(
                                  "الرقم",
                                  style: TextStyle(
                                      fontSize: screenWidth(35),
                                      fontWeight: FontWeight.bold),
                                ))
                          ]),
                        ],
                      ),
                      Column(
                        children: [
                          Stack(children: [
                            Image.asset(
                              "assets/images/pngs/white.png",
                              fit: BoxFit.contain,
                            ),
                            Positioned(
                                top: screenHeight(210),
                                left: screenWidth(40),
                                child: Text(playerLength.toString(),
                                    style: TextStyle(
                                        fontSize: screenWidth(35),
                                        fontWeight: FontWeight.bold))),
                            Positioned(
                                top: screenHeight(60),
                                left: screenWidth(42),
                                child: Text(
                                  "الطول",
                                  style: TextStyle(
                                      fontSize: screenWidth(35),
                                      fontWeight: FontWeight.bold),
                                ))
                          ]),
                        ],
                      ),
                      Column(
                        children: [
                          Stack(children: [
                            Image.asset(
                              "assets/images/pngs/white.png",
                              fit: BoxFit.contain,
                            ),
                            Positioned(
                                top: screenHeight(210),
                                left: screenWidth(40),
                                child: Text(playerAge,
                                    style: TextStyle(
                                        fontSize: screenWidth(35),
                                        fontWeight: FontWeight.bold))),
                            Positioned(
                                top: screenHeight(60),
                                left: screenWidth(42),
                                child: Text(
                                  "عام",
                                  style: TextStyle(
                                      fontSize: screenWidth(35),
                                      fontWeight: FontWeight.bold),
                                ))
                          ]),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(left: 20, child: playerImage)
        ],
      ),
    );
  }
}
