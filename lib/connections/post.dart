import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pac/model/task_model.dart';

//POST
Future<Task> createTask(String name, String content) async {
  final response = await http.post(
    Uri.parse('http://localhost:3000'),
    body: jsonEncode(<String, String>{
      'name': name,
      'content': content,
    }),
  );

  if (response.statusCode == 201) {
    return Task.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed');
  }
}
