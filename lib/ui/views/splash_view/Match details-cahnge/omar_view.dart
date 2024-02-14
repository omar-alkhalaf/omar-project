import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_player_info.dart';

class omarView extends StatefulWidget {
  const omarView({super.key});

  @override
  State<omarView> createState() => _omarViewState();
}

class _omarViewState extends State<omarView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: customPlayerInfo(
            playerImage: Image.asset("assets/images/pngs/player11.png"),
            playerName: "omar",
            playerAge: "37",
            playerPosition: "CB",
            playerLength: 190,
            playerNum: 12),
      ),
    );
  }
}
