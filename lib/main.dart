import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDiceNum = 7 ;
  int rightDiceNum = 7;
  int sumDice = 2;
  void Selector(){
    setState(() {
      leftDiceNum = Random().nextInt(6)+1;
      rightDiceNum= Random().nextInt(6)+1;
      // print(leftDiceNum);
      sumDice = leftDiceNum + rightDiceNum;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: const Text("This is a Dice APP!"),
        ),
        body: TextButton(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Priya wants to know your location',
                style: TextStyle(fontSize: 25, color: Colors.blue),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("images/dice$leftDiceNum.png"),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("images/dice$rightDiceNum.png"),
                    ),
                  )
                ],
              ),
              Text("Total Sum is $sumDice")
            ],
          ),
          onPressed: Selector,
        ),
      ),
    );
  }
}
