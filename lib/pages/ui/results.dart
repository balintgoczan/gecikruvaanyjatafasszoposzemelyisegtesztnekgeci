import 'package:flutter/material.dart';
import '../logic/ptlogic.dart';

class Results extends StatefulWidget {
  const Results({super.key});

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  // personalityToPrecentage ptp = personalityToPrecentage(personalityTraits);
  @override
  Widget build(BuildContext context) {
    // haha just remove the const and everyhting works perfect(ima kms)
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Extraversion: ${personalityPrecentage[0]}%,\nAgreeableness: ${personalityPrecentage[1]}%\nConscientiousness: ${personalityPrecentage[2]}%\nNeagative-Emotionality: ${personalityPrecentage[3]}%\n openMindedness: ${personalityPrecentage[4]}%')
          ],
        ),
      ),
    );
  }
}
