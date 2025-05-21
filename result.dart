import 'package:flutter/material.dart';
import 'package:qizz/home.dart';
import 'package:flutter/services.dart';
class Result extends StatefulWidget {
  final dynamic finalMarks,totalmarks;
  //2022-AG-8607
//MUHAMMAD MUBASHAR

  const Result({super.key,required this.finalMarks,
    required this.totalmarks,
  }
      );

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  dynamic avrage() {
    return (widget.finalMarks / widget.totalmarks) * 100;

  }
  List<String> customImage = [

    "images/happy.jpg",
    "images/smiley.png",
    "images/sad.png"

  ];
  String message() {
    if (widget.finalMarks >= 180) {
      return "GOOD PERFORMANCE!";
    } else if (widget.finalMarks >= 100) {
      return "WHAT IS THIS YOU CAN DO BETTER!";
    } else {
      return "SAD PERFORMANCE!";
    }
  }

//2022-AG-8607
//MUHAMMAD MUBASHAR

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: Colors.black,
        body: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [
            CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage(
                widget.finalMarks >= 180 ? customImage[0] :
                widget.finalMarks >= 100 ? customImage[1] :
                widget.finalMarks >= 30 ? customImage[2] :
                "images/default.png"
            ),
          ),
              SizedBox(height: 20,),

              Text(
                //Now access marks on the 'appBar' by using 'widget' property
                message(),
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),

              Text(
                //Now access marks on the 'appBar' by using 'widget' property
                'Marks: ${widget.finalMarks}',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),
              Text(
                //Now access marks on the 'appBar' by using 'widget' property
                'percentage: ${avrage()}% ',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),

              ElevatedButton(
                style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.blueAccent,

                  elevation: 10,shadowColor: Colors.blueAccent,
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 10,
                  ),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Quiz()),
                  );
                },
                child: Text(
                  'RESET',
                  style: TextStyle(
                    fontSize: 40, fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,

                  elevation:10,
                  shadowColor: Colors.deepOrange,
                  padding: EdgeInsets.symmetric(
                    horizontal: 60,
                    vertical: 10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  SystemNavigator.pop();
                },
                child: Text(
                  'EXIT',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}//2022-AG-8607
//MUHAMMAD MUBASHAR
