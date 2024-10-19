// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:pt/pages/ui/results.dart';
import '../logic/ptlogic.dart';
import '../logic/ptquestions.dart';

class PT extends StatefulWidget {
  const PT({super.key});

  @override
  State<PT> createState() => _PTState();
}

class _PTState extends State<PT> {
  int currentQuestionIndex = 0;
  int selectedButton = 0;

  @override
  Widget build(BuildContext context) {
    int valueOfAnsw = selectedButton + 1;
    calculatePersonality cp =
        calculatePersonality(currentQuestionIndex, valueOfAnsw);
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${questions[currentQuestionIndex]}, $personalityTraits'),
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
                    child: Text('${index + 1}'),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: selectedButton == -1
                  ? null
                  : () {
                      setState(
                        () {
                          cp.addingValueToTrait();
                          selectedButton = -1;

                          if (currentQuestionIndex < questions.length - 1) {
                            currentQuestionIndex += 1;
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Results(),
                              ),
                            );
                          }
                        },
                      );
                    },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
