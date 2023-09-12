import 'package:flutter/material.dart';

import 'button.dart';

class Game extends StatefulWidget {
  static const String routName = "Game";

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  List<String> board = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];
  int score1 = 0, score2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 80,
                    width: 150,
                    child: Image(image: AssetImage("assets/images/X.png"))),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "$score1",
                  style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 80,
                    width: 150,
                    child: Image(image: AssetImage("assets/images/O.png"))),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "$score2",
                  style: TextStyle(
                      fontSize: 35,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
              ],
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white12,
                  width:4
                )
              ),
              height: 550,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button(board[0], onButtonClick, 0),
                      Button(board[1], onButtonClick, 1),
                      Button(board[2], onButtonClick, 2),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button(board[3], onButtonClick, 3),
                      Button(board[4], onButtonClick, 4),
                      Button(board[5], onButtonClick, 5),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button(board[6], onButtonClick, 6),
                      Button(board[7], onButtonClick, 7),
                      Button(board[8], onButtonClick, 8),
                    ],
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  int idx = 1;

  resetBoard() {
    board = [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ];
    idx = 0;
  }

  onButtonClick(index) {
    if (board[index].isEmpty) {
      if (idx.isOdd) {
        board[index] = "X";

        if (checkWin("X")) {
          score1 += 1;
          resetBoard();
        }
      } else {
        board[index] = "O";
        if (checkWin("O")) {
          score2 += 1;
          resetBoard();
        }
      }
      if (idx == 9) resetBoard();
      idx++;
    }
    setState(() {});
  }

  checkWin(sympol) {
    for (int i = 0; i < board.length; i += 3) {
      if (board[i] == sympol &&
          board[i + 1] == sympol &&
          board[i + 2] == sympol) {
        return true;
      }
    }
    for (int i = 0; i < 3; i++) {
      if (board[i] == sympol &&
          board[i + 3] == sympol &&
          board[i + 6] == sympol) {
        return true;
      }
    }
    if (board[0] == sympol && board[4] == sympol && board[8] == sympol) {
      return true;
    }
    if (board[2] == sympol && board[4] == sympol && board[6] == sympol) {
      return true;
    }
    return false;
  }
}
