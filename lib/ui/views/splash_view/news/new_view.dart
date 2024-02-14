import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_linear_result.dart';

class newView extends StatefulWidget {
  const newView({super.key});

  @override
  State<newView> createState() => _newViewState();
}

class _newViewState extends State<newView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return customLinearResult(text: "التسديدات", value: 0.3);
        },
      )),
    );
  }
}
