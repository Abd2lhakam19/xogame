import 'package:flutter/material.dart';
import 'package:xogame/game.dart';
import 'package:xogame/templet.dart';

class StartGame extends StatelessWidget {
  static const String routName = "startGame";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TempletPage("assets/images/Logo.png","Welcome","Let's Have A Good Game",Game.routName,"Start Game"),
    );
  }
}
