import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class matchDetailsChangeView extends StatefulWidget {
  const matchDetailsChangeView({super.key});

  @override
  State<matchDetailsChangeView> createState() => _matchDetailsChangeViewState();
}

class _matchDetailsChangeViewState extends State<matchDetailsChangeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 90,
              child: Container(
                width: screenWidth(2.5),
                height: screenHeight(4.9),
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
                      "omar",
                      style:
                          TextStyle(color: AppColors.whiteColor, fontSize: 20),
                    ),
                    SizedBox(
                      height: screenHeight(50),
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
                                  top: 2,
                                  left: 9,
                                  child: Text("37",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold))),
                              Positioned(
                                  top: 7,
                                  left: 7,
                                  child: Text(
                                    "عام",
                                    style: TextStyle(
                                        fontSize: 12,
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
                                  top: 2,
                                  left: 9,
                                  child: Text("37",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold))),
                              Positioned(
                                  top: 7,
                                  left: 7,
                                  child: Text(
                                    "عام",
                                    style: TextStyle(
                                        fontSize: 12,
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
                                  top: 2,
                                  left: 9,
                                  child: Text("37",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold))),
                              Positioned(
                                  top: 7,
                                  left: 7,
                                  child: Text(
                                    "عام",
                                    style: TextStyle(
                                        fontSize: 12,
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
                                  top: 2,
                                  left: 9,
                                  child: Text("37",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold))),
                              Positioned(
                                  top: 7,
                                  left: 7,
                                  child: Text(
                                    "عام",
                                    style: TextStyle(
                                        fontSize: 12,
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
            Positioned(
                left: 20, child: Image.asset("assets/images/pngs/player11.png"))
          ],
        ),
      ),
    );
  }
}
