import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xogame/sscoreboard.dart';
import 'package:xogame/templet.dart';

class SecondScreen extends StatelessWidget {
  static const String routName = "SecondScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TempletPage("assets/images/sword.png","Compete","Play online with your friends and top the \nleaderboard!",ScoreBoard.routName,"Next"),
    );
  }
}
