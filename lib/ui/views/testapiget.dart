import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sp1_e_commerce/core/data/models/users_info.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';

import '../../core/data/repository/users_repository.dart';

class Testapi extends StatefulWidget {
  const Testapi({super.key});

  @override
  State<Testapi> createState() => _TestapiState();
}

class _TestapiState extends State<Testapi> {
  List<InfoUsre> listinfodata = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FutureBuilder(
            future:listinfodata.length==0? UserRepository().getAllUser():null,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.data != null) {
                snapshot.data!.fold((l) {
                  BotToast.showText(text: l);
                }, (r) {
                  listinfodata.clear();
                  listinfodata.addAll(r);
                });
              }
              return snapshot.connectionState == ConnectionState.waiting
                  ? SpinKitCircle(
                      color: AppColors.blackColor,
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: listinfodata.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            // Text(listinfodata[index].name!.firstname??"")
                            Text(listinfodata[index].id.toString())
                            // Text(snapshot.connectionState.toString())
                          ],
                        );
                      },
                    );
            },
          ),

          // ElevatedButton(
          //     onPressed: () {
          //       UserRepository().getAllUsers().then((value) {
          //         value.fold((l) => BotToast.showText(text: l), (r) {
          //           setState(() {
          //             listinfodata.addAll(r);
          //           });
          //         });
          //       });
          //     },
          //     child: Text("Get All Info Usres")),
        ],
      ),
    );
  }
}
