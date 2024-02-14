import 'dart:math';

import 'package:flutter/material.dart';

import '../../../shared/colors.dart';
import '../../../shared/utils.dart';

class resultsView extends StatefulWidget {
  const resultsView({super.key});

  @override
  State<resultsView> createState() => _resultsViewState();
}

class _resultsViewState extends State<resultsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(children: [
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
                "النتائج",
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
        Stack(
          children: [
            Container(child: Image.asset("assets/images/pngs/BG.png")),
            Positioned(
                top: screenHeight(55),
                left: screenWidth(3),
                child: Text(
                  "الجمعة، 2023/05/26",
                  style: TextStyle(color: AppColors.whiteColor),
                )),
            Positioned(
                top: screenHeight(21),
                left: screenWidth(2.55),
                child: Text("12 : 12 عصراً",
                    style: TextStyle(color: AppColors.whiteColor))),
            Positioned(
              top: screenHeight(10),
              left: screenWidth(8.5),
              child: Column(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    child: Image.asset(
                      "assets/images/pngs/logo1.png",
                      fit: BoxFit.contain,
                    ),
                  ),
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
                        color: AppColors.greenColor,
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
                  Container(
                      width: 70,
                      height: 70,
                      child: Image.asset("assets/images/pngs/logo2.png")),
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
          height: screenHeight(40),
        ),
        Stack(children: [
          Container(
              width: screenWidth(1.033),
              child: Image.asset("assets/images/pngs/om.png")),
          Positioned(
              left: screenWidth(15),
              top: screenHeight(40),
              child: Text(
                " جدول ترتيب فرق الدوري السوري 2023/2024",
                style: TextStyle(
                    fontSize: screenWidth(20), color: AppColors.whiteColor),
              ))
        ]),
        Row(
          children: [Container()],
        ),

        Container(
          width: screenWidth(1.04),
          height: screenHeight(4),
          decoration: BoxDecoration(color: AppColors.greyColor),
          child: DataTable(
              border: TableBorder.all(
                  color: Color.fromARGB(255, 196, 192, 192), width: 0.5),
              columnSpacing: screenWidth(70),
              dataRowHeight: 25,
              headingRowHeight: 25,
              sortColumnIndex: 0,
              sortAscending: true,
              columns: [
                // DataColumn(label: Text('Name')),
                DataColumn(
                  label: Expanded(
                      child: Center(
                          child: Text(
                    'نقاط',
                    //textAlign: TextAlign.center
                  ))),
                  numeric: true,
                ),
                DataColumn(
                  label: Expanded(
                      child: Center(
                          child: Column(
                    children: [
                      Text(
                        'خسارة',
                        //  textAlign: TextAlign.center
                      ),
                      Divider(
                        height: screenHeight(700),
                        color: AppColors.redColor,
                        thickness: 2,
                      )
                    ],
                  ))),
                  numeric: true,
                ),
                DataColumn(
                  label: Expanded(
                      child: Center(
                          child: Column(
                    children: [
                      Text(
                        'تعادل',
                        //  textAlign: TextAlign.center
                      ),
                      // Divider(
                      //     // height: screenHeight(20),
                      //     // color: AppColors.blue2Color,
                      //     // thickness: screenHeight(200),
                      //     )
                      Divider(
                        height: screenHeight(700),
                        color: AppColors.blueColor,
                        thickness: 2,
                      )
                    ],
                  ))),
                  numeric: true,
                ),
                DataColumn(
                  label: Expanded(
                      child: Center(
                          child: Column(
                    children: [
                      Text(
                        'فوز',
                        //textAlign: TextAlign.center
                      ),
                      Divider(
                        height: screenHeight(650),
                        color: AppColors.greenColor,
                        thickness: 2,
                        endIndent: 0,
                      )
                    ],
                  ))),
                  numeric: true,
                ),
                DataColumn(
                  label: Expanded(
                      child: Center(
                          child: Text(
                    'لعب',
                    //textAlign: TextAlign.center
                  ))),
                  numeric: true,
                ),
                DataColumn(
                  label: Expanded(
                      child: Center(
                          child: Text(
                    'الفريق',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    //  textAlign: TextAlign.center
                  ))),
                  numeric: true,
                ),
                DataColumn(
                  label: Expanded(
                      child: Container(
                    width: 29.5,
                    child: Text(
                      'ترتيب',
                      // textAlign: TextAlign.center
                    ),
                  )),
                  numeric: true,
                ),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Center(child: Text("20"))),
                  DataCell(Center(child: Text("18"))),
                  DataCell(Center(child: Text("18"))),
                  DataCell(Center(child: Text("18"))),
                  DataCell(Center(child: Text("18"))),
                  DataCell(Container(
                      width: 90, child: Center(child: Text("الوحدة")))),
                  DataCell(Text("1")),
                ]),
                DataRow(cells: [
                  DataCell(Center(child: Text("21"))),
                  DataCell(Center(child: Text("18"))),
                  DataCell(Center(child: Text("18"))),
                  DataCell(Center(child: Text("18"))),
                  DataCell(Center(child: Text("18"))),
                  DataCell(Container(
                      width: 90, child: Center(child: Text("الوثبة")))),
                  DataCell(Text("2")),
                ]),
                DataRow(cells: [
                  DataCell(Center(child: Text("20"))),
                  DataCell(Center(child: Text("18"))),
                  DataCell(Center(child: Text("18"))),
                  DataCell(Center(child: Text("18"))),
                  DataCell(Center(child: Text("18"))),
                  DataCell(Container(
                      width: 90, child: Center(child: Text("الكرامة")))),
                  DataCell(Text("3")),
                ]),
              ]),
        ),
        SizedBox(
          height: screenHeight(40),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30), // Set the border radius
            ),
            primary: AppColors.orangeColor,
            fixedSize: Size(
                screenWidth(2), screenHeight(30)), // Set the width and height
          ),
          onPressed: () {
            // Button's onPressed callback
          },
          child: Text('شاهد كامل الجدول'),
        )
        // Table(
        //   border: TableBorder.all(color: AppColors.blackColor),
        //   columnWidths: {
        //     0: FlexColumnWidth(1),
        //     1: FlexColumnWidth(1),
        //     2: FlexColumnWidth(1),
        //     3: FlexColumnWidth(1),
        //     4: FlexColumnWidth(1),
        //     5: FlexColumnWidth(2),
        //     6: FlexColumnWidth(1),
        //   },
        //   children: [
        //     // The table header row
        //     TableRow(
        //       //  decoration: BoxDecoration(color: Colors.orange),
        //       children: [
        //         for (var header in headers)
        //           Center(
        //             child: Text(
        //               header,
        //               style: TextStyle(
        //                 color: Colors.white,
        //                 fontSize: 18,
        //                 fontWeight: FontWeight.bold,
        //               ),
        //             ),
        //           ),
        //       ],
        //     ),
        //     // The table data rows
        //     for (var row in rows)
        //       TableRow(
        //         children: [
        //           for (var cell in row)
        //             Center(
        //               child: Text(
        //                 cell.toString(),
        //                 style: TextStyle(
        //                   color: Colors.black,
        //                   fontSize: 16,
        //                 ),
        //               ),
        //             ),
        //         ],
        //       ),
        //   ],
        // )
      ])),
    );
  }
}
