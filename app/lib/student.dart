import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Student {
  String baseURl = "http://10.0.2.2:8000/api/student/";

  //creating a Future function/method to call which returns the data
  Future<List> getAllStudent() async {
    try {
      var response = await http.get(Uri.parse(baseURl));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return Future.error('Server Error');
      }
    } catch (e) {
      return Future.error('Server Error Exception');
    }
  }
}
