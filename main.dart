import 'package:flutter/material.dart';
import 'package:qizz/splashscreen.dart';
void main() {
  runApp(MainHome());
}//2022-AG-8607
//MUHAMMAD MUBASHAR
class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,//it removes debug banner from screen corner
      title: 'Quiz APP',
      home: SplashScreen(),//from here matrialapp will render or show slpashscreen
    );
  }
}//2022-AG-8607
//MUHAMMAD MUBASHAR
