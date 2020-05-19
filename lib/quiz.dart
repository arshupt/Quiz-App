import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/Services.dart';
import 'dart:async';
import 'json2.dart';
import 'Services.dart';


class getjson extends StatefulWidget {
  getjson({Key key}) : super(key: key);
  @override
  _getjsonState createState() => _getjsonState();
}
class _getjsonState extends State<getjson> {
  Future<QuizQuestion> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = getdata();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: futureAlbum,
        builder: (context, snapshot) {
          List mydata = snapshot.data;
          print(mydata);
          if (mydata == null) {
            return Scaffold(
              body: Center(
                child: Text(
                  "Loading",
                ),
              ),
            );}
          else{
            return quizpage(mydata : mydata);
          }
        },
    );
  }
}
class quizpage extends StatefulWidget {
  var mydata;
  quizpage({Key key, @required this.mydata}) : super(key: key);
  _quizpageState createState() => _quizpageState(mydata);
}
class _quizpageState extends State<quizpage> {
  var mydata;
  _quizpageState(this.mydata);

  Widget choicebutton(){
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: MaterialButton(
        onPressed: (){},
        child: Text(
          "option 1",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "",
            fontSize: 16.0,
          ),
          maxLines: 1,
        ),
        color: Colors.indigo,
        splashColor: Colors.indigo[700],
        highlightColor: Colors.indigo[700],
        minWidth: 200.0,
        height: 45.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,DeviceOrientation.portraitUp
    ]);
    return WillPopScope(
      onWillPop: () {
        return showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(
                "Quizapp",
              ),
              content: Text("You Can't Go Back At This Stage."),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Ok',
                  ),
                )
              ],
            ));
      },
      child: Scaffold(
          body: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Sample Questions",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: "",
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      choicebutton(),
                      choicebutton(),
                      choicebutton(),
                      choicebutton(),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex:1,
                child: Container(
                  alignment: Alignment.topCenter,
                  child: Center(
                    child: Text(
                      "30",
                      style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w700,
                          fontFamily: ""
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
