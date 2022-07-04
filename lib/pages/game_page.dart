import 'dart:math';

import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  var _highestScore = 0;
  var _score = 0;
  var _index1 = 0;
  var _index2 = 0;
  var _diceSum = 0;
  bool _gameOver = false;
  final _diceList = <String>[
    'images/d1.png',
    'images/d2.png',
    'images/d3.png',
    'images/d4.png',
    'images/d5.png',
    'images/d6.png'
  ];
  final _random = Random.secure();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dice Game",
          style: TextStyle(fontSize: 35.0, fontStyle: FontStyle.normal),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Highest Score : $_highestScore",
                  style: const TextStyle(
                    fontSize: 25.0,
                  )),
              Text(
                "Score : $_score",
                style: const TextStyle(
                    fontSize: 35.0,
                    fontStyle: FontStyle.normal,
                    shadows: [
                      Shadow(
                          color: Colors.black38,
                          blurRadius: 20.0,
                          offset: Offset(
                            10.0,
                            10.0,
                          ))
                    ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(_diceList[_index1], width: 70.0, height: 70.0),
                  Image.asset(_diceList[_index2], width: 70.0, height: 70.0),
                ],
              ),
              Text(
                "Dice Sum : $_diceSum",
                style: const TextStyle(
                  fontSize: 25.0,
                ),
              ),
              if (_gameOver)
                const Text(
                  "Game Over",
                  style: TextStyle(fontSize: 35.0, color: Colors.red),
                ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
                  ElevatedButton(
                    onPressed: playDice,
                    style: ElevatedButton.styleFrom(
                      elevation: 10.0,
                      primary: Colors.red,
                      padding: const EdgeInsets.fromLTRB(40.0, 12.0, 40.0, 12.0),
                      // maximumSize: Size(200.0, 70.0),
                    ),
                    child: const Text("Play",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        )),
                  ),
                  // ElevatedButton(
                  //   onPressed: resetDice,
                  //   style: ElevatedButton.styleFrom(
                  //     elevation: 10.0,
                  //     primary: Colors.red,
                  //     padding: const EdgeInsets.fromLTRB(40.0, 12.0, 40.0, 12.0),
                  //     // maximumSize: Size(200.0, 70.0),
                  //   ),
                  //   child: const Text("Reset",
                  //       style: TextStyle(
                  //         fontSize: 25.0,
                  //         color: Colors.white,
                  //       )),
                  // ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }

  void playDice() {
    setState(() {
      _index1 = _random.nextInt(6);
      _index2 = _random.nextInt(6);
      _diceSum = _index1 + _index2 + 2;
      // if (_diceSum == 7) {
      //   _gameOver = true;
      //   if (_score > _highestScore) {
      //     _highestScore = _score;
      //     _score=0;
      //     _diceSum=0;
      //   }
      // } else {
        _score += _index1 + _index2 + 2;
      // }
    });
  }

  // void resetDice() {
  //   setState((){
  //     _score=0;
  //     _diceSum=0;
  //     _gameOver=false;
  //   });
  // }
}
