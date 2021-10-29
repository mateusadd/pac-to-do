import 'dart:convert';

import 'package:http/http.dart' as http;

import 'model.dart';

class DataService {
  Future<Response> getWeather(String test) async {
    final uri = Uri.https('http://192.168.1.108:3000', '');

    final response = await http.get(uri);

    print(response.body);
    final json = jsonDecode(response.body);
    return Response.fromJson(json);
  }
}
