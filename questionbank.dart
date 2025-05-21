import 'questionawnser.dart';
//2022-AG-8607
//MUHAMMAD MUBASHAR

class QuestionBank {

  int count=0;

  List<QuestionAnswer> queansbank = [
    QuestionAnswer("Q1: you see the sun in the day light ?", true),
     QuestionAnswer("Q2: muslims pray five time a day ?", true),
    QuestionAnswer("Q3: is pakistan nuclear power ?", true),
    QuestionAnswer("Q4: majority in pakistan are muslims ? ", true),
    QuestionAnswer("Q5:can you reach at speed of light ?", false),
    QuestionAnswer("Q6: The Verb To Be hasn't got a negative form.", false),
    QuestionAnswer("Q7: Modals are complementary verbs.", true),
    QuestionAnswer("Q8: We generally use the pronoun “She” to talk about Female Nouns.", true),
    QuestionAnswer("Q9: We use the Passive Voice when we want to focus on the object of the action.", true),
    QuestionAnswer("Q10: In Reported Speech, the Past Perfect always changes.", false),
    QuestionAnswer("Q12: Nouns can be Simple or Compound.", true),
    QuestionAnswer("Q13: In all the Conditional sentences, the order of the sentence can be altered (Condition and result or result and Condition).", true),
    QuestionAnswer("Q14: Adversative Connectors are used to connect two opposite ideas.", true),
    QuestionAnswer("Q15: Adverbs of time do not change in Reported Speech.", false),
    QuestionAnswer("Q16: We use the article (The) to talk only about plural nouns.", false),
    QuestionAnswer("Q17: There is not an established order to be respected when we use many Adjectives in a sentence.", false),
    QuestionAnswer("Q18: The Comparative form of (Big) is (More Big).", false),
    QuestionAnswer("Q19: Adjectives have no gender.", true),
    QuestionAnswer("Q20: The word (Bird) is considered a Neutral Noun.", true),
    QuestionAnswer("Q21: In Reported Speech, we never have to change the tense of the spoken words.", false),

  ];
  int getLength() {
    return queansbank.length;
  }

  String? getQuestion(){
    return queansbank[count].questionStatement;
  }

  bool? getAnswer(){
    return queansbank[count].answerStatement;
  }

  void nextQuestion(){
    if(count<queansbank.length-1){
      count++;
    }
  }

  bool finishQuiz(){
    if(count >=queansbank.length-1){
      return true;
    }
    else{
      return false;
    }
  }
  void quizClose(){
    count=0;
  }

}//2022-AG-8607
//MUHAMMAD MUBASHAR