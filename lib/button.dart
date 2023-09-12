import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String txt;
  Function onClick;
  int index;

  Button(this.txt, this.onClick, this.index);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor:txt=="X"? Colors.red:txt=="O"?Colors.green:Colors.grey.withOpacity(0.2),
            elevation: 0, 
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            //   shadowColor: Colors.orange
            fixedSize: Size(110, 130)),
        onPressed: () {
          onClick(index);
        },
        child: Text(txt,style: TextStyle(
          color: txt=="X"?Colors.white:Colors.black,
          fontSize: 65,
          fontWeight: FontWeight.w400
        ),));
  }
}
