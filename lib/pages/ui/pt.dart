// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../logic/ptlogic.dart';
import '../logic/ptquestions.dart';

class PT extends StatefulWidget {
  const PT({super.key});

  @override
  State<PT> createState() => _PTState();
}

int selectedButton = 0;
bool next = false;
int counter = 0;
int agree = 0;

class _PTState extends State<PT> {
  @override
  Widget build(BuildContext context) {
    int selectedbuttonTemp = selectedButton + 1;

    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: Center(
            child: Text(
          'Gecire P.T.',
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
              'Current Button: ${selectedbuttonTemp},     nextPressed: ${next},         NumOfPresses: ${counter}'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // this generates 5 buttons
            children: List.generate(
              5,
              (index) {
                return ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedButton = index;
                      });
                    },
                    // ternary operator, its like an if-else statement, if selectedbutton = index, than color is purple, else its blue
                    style: ElevatedButton.styleFrom(
                        backgroundColor: selectedButton == index
                            ? Colors.deepPurple[200]
                            : Colors.blue[200]),
                    child: Text('${index + 1}'));
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(
                () {
                  next = true;
                  counter++;
                },
              );
            },
            child: Text('Next'),
          ),
          Text('Agree level: $agree'),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  agree = incrementAgree(agree);
                });
              },
              child: Text('+10')),
        ]),
      ),
    );
  }
}
