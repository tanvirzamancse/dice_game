import 'package:flutter/material.dart';
class PlayButton extends StatefulWidget {
  const PlayButton(void print, {Key? key}) : super(key: key);

  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Container(
        width: 200.0,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 15.0,
                  spreadRadius: 2,
                  offset: Offset(10.0, 3.0))
            ]),
        child: const Text("Play",
            style: TextStyle(fontSize: 25, color: Colors.white)),
      ),
    );
  }
}

