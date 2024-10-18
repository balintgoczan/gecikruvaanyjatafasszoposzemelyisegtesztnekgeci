import 'package:flutter/material.dart';
import './ptquestions.dart';

// It needs an index
// It needs a list from which the index is taken from
// it needs to get the input of the person
// only add the value if th next button was pressed

// 1: extraversion, 2: agreeableness, 3: conscientiousness, 4: negativeEmotionality, 5: openMindedness
List<int> personalityTraits = [0, 0, 0, 0, 0];

class calculatePersonality {
  int index = 0;
  int answ = 0;

  calculatePersonality(this.index, this.answ);

  void addingValueToTrait() {
    // this if is just to make sure the code doesnt run once the program is finished
    if (index <= questions.length) {
      personalityTraits[traitType[index - 1]] += answ;
    }
  }
}
