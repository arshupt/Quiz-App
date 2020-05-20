import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'json2.dart';


  Future<List<QuizQuestion>> getdata() async{
    List<QuizQuestion> list;
      final response = await http.get('http://www.mocky.io/v2/5ebd2f5f31000018005b117f');
      if(response.statusCode == 200){
        var decoded = json.decode(response.body);
        var rest = decoded["Quiz Questions"] as List;
        list = rest.map<QuizQuestion>((json) => QuizQuestion.fromJson(json)).toList();
        //return QuizQuestion.fromJson(decoded["Quiz Questions"]);
      }
      else{
        throw Exception('Failed to load');
      }
      return list;
    }

