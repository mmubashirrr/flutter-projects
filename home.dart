import 'package:flutter/material.dart';
import 'package:qizz/questionbank.dart';
import 'package:qizz/result.dart';
class Quiz extends StatefulWidget {
  const Quiz({super.key});
//2022-AG-8607
//MUHAMMAD MUBASHAR
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int marks=0;
  List<Icon> iconlist = [];
  QuestionBank qa = QuestionBank();//2022-AG-8607
//MUHAMMAD MUBASHAR

  void checkQuiz(bool userAnswer) {

    if (qa.finishQuiz()==true) {
      checking(userAnswer);
      qa.quizClose();
      iconlist = [];
      int totalqm = qa.getLength()*10;
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Result(finalMarks: marks,  totalmarks: totalqm),),);
    }
     else {if(qa.getAnswer()==userAnswer){ marks = marks + 10;

    qa.nextQuestion();
    iconlist.add(Icon(Icons.check, size: 50, color: Colors.green));

    }else{ iconlist.add(Icon(Icons.close, size: 50, color: Colors.red));

    qa.nextQuestion();
    }


     }
  }
//2022-AG-8607
//MUHAMMAD MUBASHAR


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor:Colors.white,
        appBar: AppBar(backgroundColor: Colors.black,
          title: Center(
            child: Text("$marks",style:TextStyle(color: Colors.white, fontSize: 30), ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [

            Text(qa.getQuestion()!,style:TextStyle(color: Colors.black, fontSize: 30),textAlign: TextAlign.center,),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  checkQuiz(true);
                });
              },//2022-AG-8607
//MUHAMMAD MUBASHAR
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,


                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 15,
                shadowColor: Colors.green,
                padding: EdgeInsets.symmetric(
                  horizontal: 70,
                  vertical: 15,
                ),
              ),
              child: Text("TRUE", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black)),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  checkQuiz(false);
                });
              },//2022-AG-8607
//MUHAMMAD MUBASHAR
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 15,
                shadowColor: Colors.red,
                padding: EdgeInsets.symmetric(
                  horizontal: 70,
                  vertical: 15,
                ),
              ),
              child: Text("FALSE", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black)),
            ),
            SizedBox(height: 20,),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: iconlist,
              ),
            )


          ],
//2022-AG-8607
//MUHAMMAD MUBASHAR

          ),
        ),

      ),
    ));
  }

  void checking(bool userAnswer) {}
}
//2022-AG-8607
//MUHAMMAD MUBASHAR