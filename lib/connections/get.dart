import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pac/model/task_model.dart';

Future<Task> fetchTask() async {
  final response = await http.get(Uri.parse('http://localhost:3000'));

  if (response.statusCode == 200) {
    return Task.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed');
  }
}
