import 'package:flutter/material.dart';

//import 'cadastro.dart';
//import 'main_page.dart';
import 'new_task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: MainPage(),
      //home: SignUpPage(),
      home: NewTask(),
    );
  }
}
