//configure api url and functions for receiving data

import 'dart:convert';
import 'package:http/http.dart' as http;

class URLS{
  static const String BASE_URL ='http://numbersapi.com';
}

class ApiService{
  static Future getRandomFact() async{
    final response = await http.get('${URLS.BASE_URL}/random');
    if(response.statusCode==200){
      return json.decode(response.body);
    }else{
      return null;
    }
  }
}