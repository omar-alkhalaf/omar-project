import 'package:flutter/material.dart';

class matchController extends StatefulWidget {
  const matchController({super.key});

  @override
  State<matchController> createState() => _matchControllerState();
}

class _matchControllerState extends State<matchController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Positioned(
                left: 20,
                child: Column(
                  children: [
                    Image.asset("assets/images/pngs/logo.png"),
                    Text("data")
                  ],
                ),
              ),
              Positioned(
                top: 0,
                left: 150,
                child: Column(
                  children: [
                    Text("ملعب خالد ابن الوليد"),
                    Text("0:1"),
                    Text("الشوط الثاني"),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                left: 300,
                child: Column(
                  children: [
                    Image.asset("assets/images/pngs/logo.png"),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text("data"),
                    )
                  ],
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Column(
              //       children: [Text("data")],
              //     ),
              //     Column(
              //       children: [Text("data")],
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
