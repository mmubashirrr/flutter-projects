
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:qizz/home.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
//2022-AG-8607
//MUHAMMAD MUBASHAR
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
//2022-AG-8607
//MUHAMMAD MUBASHAR
  void initState() {
    super.initState();
    Timer(Duration(seconds: 15), () {
      Navigator.pushReplacement(context,
        MaterialPageRoute(builder:  (BuildContext context)=> Quiz()),
      );
    });
  }//2022-AG-8607
//MUHAMMAD MUBASHAR
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//it removes debug banner from screen corner
      title: 'Quiz APP',
      home:Scaffold(
        backgroundColor: Colors.deepOrange,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('GENERAL KNOWLEDGE AND ENGLISH ',style: TextStyle(color: Colors.black87,fontSize: 30,fontWeight: FontWeight.bold,),textAlign: TextAlign.center, ),
                SizedBox(height: 20,),
                CircleAvatar(radius: 100,
                  backgroundImage: AssetImage('images/playstore.png'),
                ),
                SizedBox(height: 20,),
                Text('2022-AG-8607',style: TextStyle(color: Colors.black87,fontSize: 30,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                SizedBox(height: 10,),
                Text('MUHAMMAD MUBASHAR',style: TextStyle(color: Colors.black87,fontSize: 30,fontWeight: FontWeight.bold,),textAlign: TextAlign.center, ),
                SizedBox(height: 30,),
                LinearProgressIndicator(
                  minHeight: 10,
                  color: Colors.yellow,
                  backgroundColor: Colors.deepOrange, // Background color
                )
              ],
            ),
          ),
        ),
      ),

    );
  }//2022-AG-8607
//MUHAMMAD MUBASHAR
}
