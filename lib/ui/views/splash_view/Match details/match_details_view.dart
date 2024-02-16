import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:get/get.dart';

import 'match_details_controller.dart';

class matchDetailsView extends StatefulWidget {
  const matchDetailsView({super.key});

  @override
  State<matchDetailsView> createState() => _matchDetailsViewState();
}

class _matchDetailsViewState extends State<matchDetailsView> {
  detailsController controller = Get.put(detailsController());
  @override
  Widget build(BuildContext context) {
    var index;
    return DefaultTabController(
      length: 3,
      child: SafeArea(
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
                    "تفاصيل المباراة",
                    style: TextStyle(
                        color: AppColors.whiteColor, fontSize: screenWidth(20)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/pngs/Rectangle.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight(20),
            ),
            Container(
              width: screenWidth(1.107042253521127),
              height: screenHeight(5),
              color: AppColors.greyColor,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Column(
                      children: [
                        Image.network(controller.allList[index].logo ?? ""),
                        Image.asset('assets/images/pngs/alwthbeh.png'),
                        SizedBox(
                          height: screenHeight(70),
                        ),
                        Text("الوثبة"),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40, left: 10),
                        child: Text(
                          "0",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: Column(
                      children: [
                        Text("الملعب البلدي"),
                        SizedBox(
                          height: screenHeight(15),
                        ),
                        Text(" م12:12  السبت 2 /12")
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 40,
                        ),
                        child: Text(
                          "0",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Column(
                      children: [
                        Image.asset('assets/images/pngs/alwthbeh.png'),
                        SizedBox(
                          height: screenHeight(70),
                        ),
                        Text("الوثبة"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight(150),
            ),
            SingleChildScrollView(
              child: Container(
                width: screenWidth(1.2),
                child: TabBar(
                    labelColor: AppColors.blackColor,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: AppColors.blackColor,
                    tabs: [
                      Tab(
                        text: "التبديلات",
                      ),
                      Tab(
                        text: "خطة الفريق",
                      ),
                      Tab(
                        text: "الاحتياط",
                      ),
                    ]),
              ),
            ),
            Container(
              width: screenWidth(1),
              height: screenHeight(1.885),
              child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: screenWidth(1),
                          height: screenHeight(1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                    width: screenWidth(2.5),
                                    height: screenHeight(2.3),
                                    color: AppColors.whiteColor,
                                    child: Stack(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/images/svgs/group.svg"),
                                        Positioned(
                                          left: 20,
                                          child: Image.asset(
                                            "assets/images/pngs/player11.png",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ],
                                    )),
                                Container(
                                    width: screenWidth(10),
                                    height: screenHeight(10),
                                    child: Stack(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/images/svgs/Vector.svg",
                                            fit: BoxFit.contain),
                                      ],
                                    )),
                                Container(
                                    width: screenWidth(2.5),
                                    height: screenHeight(2.3),
                                    color: AppColors.whiteColor,
                                    child: Stack(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/images/svgs/group.svg"),
                                        Positioned(
                                          left: 20,
                                          child: Image.asset(
                                            "assets/images/pngs/player11.png",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ],
                                    )),
                              ]),
                        )
                      ],
                    ),
                    Container(
                      color: AppColors.blackColor,
                      child: Image.asset("assets/images/pngs/plan.png",
                          fit: BoxFit.fill),
                    ),
                    Container(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Container(
                              width: screenWidth(2.5),
                              height: screenHeight(2.3),
                              color: AppColors.whiteColor,
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                      "assets/images/svgs/group.svg"),
                                  Positioned(
                                    left: 20,
                                    child: Image.asset(
                                      "assets/images/pngs/player11.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ));
                        },
                      ),
                    )
                  ]),
            )
          ],
        ),
      )),
    );
  }
}
