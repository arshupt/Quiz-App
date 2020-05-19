import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'json2.dart';


  Future<QuizQuestion> getdata() async{
    try{
      final response = await http.get('http://www.mocky.io/v2/5ebd2f5f31000018005b117f');
      if(response.statusCode == 200){
        return QuizQuestion.fromJson(json.decode(response.body));
      }
      else{
        throw Exception('Failed to load');
      }
    }
    catch(e){
      throw Exception('Failed to load');
    }
  }
