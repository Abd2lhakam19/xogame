import 'package:flutter/material.dart';
import 'package:xogame/game.dart';
import 'package:xogame/homescreen1.dart';
import 'package:xogame/sscoreboard.dart';
import 'package:xogame/startgame.dart';

import 'homescreen.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routName,
      routes: {
        HomeScreen.routName:(context)=>HomeScreen(),
        SecondScreen.routName:(context)=>SecondScreen(),
        ScoreBoard.routName:(context)=>ScoreBoard(),
        StartGame.routName:(context)=>StartGame(),
        Game.routName:(context)=>Game(),
      },
    );
  }
}
