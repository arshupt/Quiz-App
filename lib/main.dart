import 'package:flutter/material.dart';
import 'splash.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "QuizApp",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: splashscreen(),
    );
  }
}


