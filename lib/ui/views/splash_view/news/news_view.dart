import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_linear_result.dart';

import '../../../shared/colors.dart';
import '../../../shared/utils.dart';

class newsView extends StatefulWidget {
  const newsView({super.key});

  @override
  State<newsView> createState() => _newsViewState();
}

class _newsViewState extends State<newsView> {
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
                    "الأخبار",
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
            Stack(
              children: [
                Image.asset("assets/images/pngs/photo.png"),
                Positioned(
                  top: screenHeight(70),
                  child: Container(
                    width: screenWidth(7),
                    height: screenHeight(15),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.asset("assets/images/pngs/share.png"),
                  ),
                ),
                Positioned(
                  left: screenWidth(1.09),
                  top: screenHeight(90),
                  child: Container(
                    width: screenWidth(30),
                    height: screenHeight(15),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.asset("assets/images/pngs/v.png"),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    width: screenWidth(1),
                    height: screenHeight(1),
                    decoration: BoxDecoration(
                        color: AppColors.blue2Color,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      children: [
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "الكرامة يتغلب على جاره فريق الوثبة بهدفين مقابل هدف",
                              style: TextStyle(
                                fontSize: screenWidth(18),
                                color: AppColors.whiteColor,
                              ),
                              // maxLines: 2,
                            ),
                          ),
                        ),
                        // Directionality(
                        //   textDirection: TextDirection.ltr,
                        //   child: Row(
                        //     children: [
                        //       Padding(
                        //         padding: EdgeInsets.symmetric(
                        //             horizontal: screenWidth(60)),
                        //         child: Icon(Icons.favorite),
                        //       ),
                        //       Padding(
                        //         padding: EdgeInsets.symmetric(
                        //             horizontal: screenWidth(60)),
                        //         child: Text("1040"),
                        //       ),
                        //       Padding(
                        //         padding: EdgeInsets.symmetric(
                        //             horizontal: screenWidth(60)),
                        //         child: Icon(Icons.comment),
                        //       ),
                        //       Padding(
                        //         padding: EdgeInsets.symmetric(
                        //             horizontal: screenWidth(60)),
                        //         child: Text("950"),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        Text(
                          "احصائيات المباراة",
                          style: TextStyle(
                              fontSize: screenWidth(18),
                              color: AppColors.whiteColor),
                        ),
                        // SizedBox(
                        //   height: screenHeight(40),
                        // ),
                        Text(""),
                        Container(
                          width: screenWidth(1.15),
                          height: screenHeight(1.9),
                          decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: screenHeight(35),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: screenWidth(5),
                                    height: screenHeight(60),
                                    decoration: BoxDecoration(
                                        color: AppColors.blue2Color,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            bottomRight: Radius.circular(20))),
                                  ),
                                  Text(
                                    "الوثبة",
                                    style: TextStyle(fontSize: screenWidth(20)),
                                  ),
                                  Container(
                                    width: screenWidth(9),
                                    height: screenHeight(15),
                                    child: Image.asset(
                                      "assets/images/pngs/rectangle1.png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Container(
                                    width: screenWidth(9),
                                    height: screenHeight(15),
                                    child: Image.asset(
                                      "assets/images/pngs/karama.png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Text("الكرامة"),
                                  Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Container(
                                      width: screenWidth(5),
                                      height: screenHeight(60),
                                      decoration: BoxDecoration(
                                          color: AppColors.blue2Color,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              bottomLeft: Radius.circular(20))),
                                    ),
                                  ),
                                ],
                              ),
                              // customLinearResult(
                              //   text: "التسدسدات",
                              //   value: 0.5,
                              // ),
                              // customLinearResult(
                              //   text: "التسديدات على المرمى",
                              //   value: 0.4,
                              // ),
                              // customLinearResult(
                              //   text: "الركنيات",
                              //   value: 0.3,
                              // ),
                              // customLinearResult(
                              //   text: "حالات التسلل",
                              //   value: 0.2,
                              // ),
                              // customLinearResult(
                              //   text: "الأخطاء",
                              //   value: 0.1,
                              // ),
                              // customLinearResult(
                              //   text: "بطاقات صفراء",
                              //   value: 0.6,
                              // ),
                              Expanded(
                                child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return customLinearResult(
                                        text: "التسديدات على المرمى",
                                        value: 0.7);
                                  },
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
