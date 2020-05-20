import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/first.dart';
class result extends StatefulWidget {
  int marks;
  result({Key key,@required this.marks}): super(key:key);
  @override
  _resultState createState() => _resultState(marks);
}

class _resultState extends State<result> {
  int marks;
  _resultState(this.marks);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quizora",
        ),
      ),

      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            top: 100.0,
            ),
          child: Text(
            "Your Score",
            style: TextStyle(
              fontSize: 45.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF484849),
              fontFamily: "Montserrat",
            ),
          ),
        ),
         Container(
           margin: EdgeInsets.all(25.0),
           padding: EdgeInsets.all(15.0),
           alignment: Alignment.center,
           decoration: BoxDecoration(
             gradient:
             LinearGradient(
               begin: Alignment.topCenter,
               end: Alignment.bottomCenter,
               colors: [const Color(0xFFFDF305), const Color(0xFFFD5E05)],
               //tileMode: TileMode.repeated,
             ),
             //color: Color(0xFF4374AD),
             shape: BoxShape.circle,
           ),
           child: Text(
             "$marks",
             style: TextStyle(
               fontSize: 50.0,
               fontWeight: FontWeight.bold,
               color: Colors.white,

             ),

           ),

         ),
         /*Text(
           "Points",
           style: TextStyle(
             fontSize: 45.0,
             fontWeight: FontWeight.bold,
             color: Color(0xFF484849),
             fontFamily: "Montserrat",
           ),
         ),*/



          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => homepage(),
                    ));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  color: Color(0xFF0D47A1),
                  child: Text(
                    "Replay",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat",

                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 10.0,
                  ),
                )
              ],
            ),
          ),

        ],

      ),
      backgroundColor: Colors.white,
    );
  }
}





/* Expanded(
            flex: 2 ,
            child: Container(
              //color: Colors.indigo,
              alignment: Alignment.bottomCenter,
              child: Text(
                "You Scored",
                style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  fontFamily: "Montserrat",
                ),
              ),
            ),
          ),
          Expanded(

            flex: 10,

            child: Container(

              margin: EdgeInsets.all(100.0),
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
              ),
              child: Text(
                "$marks",

                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,

                ),

              ),

              //color: Colors.indigo,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              //color: Colors.indigo,
              alignment: Alignment.topCenter,
              child: Text(
                "Points",
                style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  fontFamily: "Montserrat",
                ),
              ),
            ),
          ),*/
