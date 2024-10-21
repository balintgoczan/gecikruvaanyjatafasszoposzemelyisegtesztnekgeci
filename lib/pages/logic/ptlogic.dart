import './ptquestions.dart';

// It needs an index
// It needs a list from which the index is taken from
// it needs to get the input of the person
// only add the value if the next button was pressed

// 1: extraversion, 2: agreeableness, 3: conscientiousness, 4: negativeEmotionality, 5: openMindedness
List<int> personalityTraits = [-12, -12, -12, -12, -12];

// Get this to be int somehow
List<int> personalityPrecentage = [];

class calculatePersonality {
  int index = 0;
  int answ = 0;
  calculatePersonality(this.index, this.answ);

  void addingValueToTrait() {
    // this if is just to make sure the code doesnt run once the program is finished
    if (index <= questions.length) {
      // We need the -1 because the traitType can only range from 1-5, and we need 0-4
      personalityTraits[traitType[index] - 1] += answ;
    }
  }
}

// just call this at the end screen before navigating to the resuslts page and than preint the results
void calculatingPrecentage() {
  for (int trait in personalityTraits) {
    double traitTemp = (trait / 48) * 100;
    int finalTrait = traitTemp.toInt();
    personalityPrecentage.add(finalTrait);
  }
}
