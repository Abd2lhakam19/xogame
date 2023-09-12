import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TempletPage extends StatelessWidget {
  String image;
  String title;
  String subTitle;
  String routName;
  String click;

  TempletPage(this.image, this.title, this.subTitle, this.routName, this.click);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Container(
            height: 350,
              child: Image(image: AssetImage(image))),
          Text(
            title,
            style:
                GoogleFonts.roboto(fontSize: 40, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            subTitle,
            style: GoogleFonts.roboto(fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 100,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: Size(150, 40),
                backgroundColor: Colors.yellow.withOpacity(0.9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                shadowColor: Colors.yellow,
                elevation: 5),
            onPressed: () {
              Navigator.pushNamed(context, routName);
            },
            child: Text(
              click,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
