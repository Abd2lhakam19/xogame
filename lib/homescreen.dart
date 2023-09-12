import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xogame/homescreen1.dart';
import 'package:xogame/sscoreboard.dart';
import 'package:xogame/templet.dart';
class HomeScreen extends StatelessWidget {
  static const String routName = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TempletPage("assets/images/idea.png","Welcome","Most fun game now available on your \nsmartphone device!",SecondScreen.routName,"Next"),
    );
  }
}
