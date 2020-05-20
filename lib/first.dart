import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'quiz.dart';
class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}
class _homepageState extends State<homepage>{
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,DeviceOrientation.portraitUp
    ]);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Quizora"
          ),
        ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 3.0,
            bottom: 5.0

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text(
              "INSTRUCTIONS",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Montserrat",

                color: Colors.black
              ),
            ),
            Text('''
            \n1. For each question, 10 seconds will be allotted for answering\n\n2. Every question have four options\n\n3.Choose one option by tapping on it then and you will be directed to the next question\n\n4.At the end of the quiz, total score will be displayed\n\n\t\t       Click on "Start Quiz" to begin
            ''',
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: "Montserrat",
              color: Colors.black,
            ),
            ),
            RaisedButton(
              onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => getjson(),
                ));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              color: Color(0xFF0D47A1),
              child: Text(
                  "Start Quiz",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white
                  ),
                  textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}