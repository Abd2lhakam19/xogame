import 'package:flutter/material.dart';
import 'package:xogame/startgame.dart';
import 'package:xogame/templet.dart';

class ScoreBoard extends StatelessWidget {
 static const String routName = "scoreBoard";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TempletPage("assets/images/winner.png","Scoreboard","Earn points for each game and make \nyour way to top the scoreboard!",StartGame.routName,"Next"),
    );
  }
}
