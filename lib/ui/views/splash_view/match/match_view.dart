import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_container_results.dart';
import '../../../shared/colors.dart';
import '../../../shared/utils.dart';

class matchView extends StatefulWidget {
  const matchView({Key? key});

  @override
  State<matchView> createState() => _matchViewState();
}

class _matchViewState extends State<matchView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: screenWidth(1),
              height: screenHeight(10),
              decoration: BoxDecoration(
                  color: AppColors.blueColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "المباريات",
                    style: TextStyle(
                        color: AppColors.whiteColor, fontSize: screenWidth(20)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(screenWidth(50)),
                    child: Image.asset('assets/images/pngs/Rectangle.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight(50),
            ),
            Stack(
              children: [
                Image.asset("assets/images/pngs/BG.png"),
                Positioned(
                    top: screenHeight(55),
                    left: screenWidth(3),
                    child: Text(
                      "الجمعة، 2023/05/26",
                      style: TextStyle(color: AppColors.blue2Color),
                    )),
                Positioned(
                    top: screenHeight(21),
                    left: screenWidth(2.55),
                    child: Text("12 : 12 عصراً",
                        style: TextStyle(color: AppColors.blue2Color))),
                Positioned(
                  top: screenHeight(10),
                  left: screenWidth(8.5),
                  child: Column(
                    children: [
                      Transform.scale(
                          scale: 1.2,
                          child: Image.asset("assets/images/pngs/logo.png")),
                      SizedBox(
                        height: screenHeight(90),
                      ),
                      Text(
                        "جبلة",
                        style: TextStyle(
                            fontSize: screenWidth(15),
                            color: AppColors.blue2Color,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: screenHeight(10),
                  left: screenWidth(3),
                  child: Column(
                    children: [
                      Text(
                        "ملعب خالد ابن الوليد",
                        style: TextStyle(fontSize: screenWidth(23)),
                      ),
                      SizedBox(
                        height: screenHeight(120),
                      ),
                      Text(
                        "0 : 1",
                        style: TextStyle(
                            color: AppColors.orangeColor,
                            fontSize: screenWidth(10),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: screenHeight(50),
                      ),
                      Column(
                        children: [
                          Text("الشوط"),
                          Text("الثاني"),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: screenHeight(10),
                  left: screenWidth(1.38),
                  child: Column(
                    children: [
                      Transform.scale(
                          scale: 1.2,
                          child: Image.asset("assets/images/pngs/logo.png")),
                      SizedBox(
                        height: screenHeight(90),
                      ),
                      Text(
                        "جبلة",
                        style: TextStyle(
                            fontSize: screenWidth(15),
                            color: AppColors.blue2Color,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight(30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Divider(
                    color: AppColors.blackColor,
                    thickness: screenHeight(500),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: screenWidth(50), right: screenWidth(50)),
                  child: Text(
                    "المباريات القادمة",
                    style: TextStyle(fontSize: screenWidth(22)),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: AppColors.blackColor,
                    thickness: screenHeight(500),
                  ),
                ),
              ],
            ),
            // customContainerResults(
            //   edge: 20,
            // ),
            // Expanded(
            //   flex: 1,
            //   child: ListView.builder(
            //     itemCount: 5,
            //     scrollDirection: Axis.vertical,
            //     //shrinkWrap: false,
            //     itemBuilder: (context, index) {
            //       return Padding(
            //           padding: EdgeInsetsDirectional.symmetric(
            //               vertical: screenHeight(90)),
            //           child: customContainerResults(
            //             edge: 30,
            //           ));
            //     },
            //   ),
            // )
            customContainerResults(
              edge: 25,
            )
          ],
        ),
      ),
    );
  }
}
