import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Dice(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Игра в кости"),
        centerTitle: true,
      ),
    ),
  ));
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  randomDice createState() => randomDice();
}

class randomDice extends State<Dice> {
  int d1 = 1, d2 = 1;
  void funcDice() {
    setState(() {
      d1 = Random().nextInt(6) + 1;
      d2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: MaterialButton(
                child: Image.asset('images/$d1.jpg', width: 150),
                onPressed: () {
                  funcDice();
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: MaterialButton(
                child: Image.asset('images/$d2.jpg', width: 150),
                onPressed: () {
                  funcDice();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
