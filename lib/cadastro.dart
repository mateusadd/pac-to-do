import 'package:flutter/material.dart';
import 'package:pac/main_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Color(0xff36b0c1),
            width: 1020.0,
            height: 150.0,
            alignment: Alignment.center,
            child: Text(
              "Task Manager",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 60.0,
                color: Colors.white,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100.0,
              ),
              Container(
                width: 300.0,
                height: 35.0,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Username",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                width: 300.0,
                height: 40.0,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                height: 20.0,
              ),
              Container(
                width: 300.0,
                height: 35.0,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                width: 300.0,
                height: 40.0,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                height: 35.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  );
                },
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff36b0c1),
                    alignment: Alignment.center,
                    textStyle: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    fixedSize: Size(80.0, 50.0)),
              ),
              /*
              Container(
                width: 300.0,
                height: 35,
                alignment: Alignment.center,
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  color: Color(0xff36b0c1),
                ),
              ),
              */
              Container(
                height: 35.0,
                alignment: Alignment.center,
                child: Text(
                  "Or",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xffa5a5a5),
                  ),
                ),
              ),
              Container(
                height: 35.0,
                alignment: Alignment.topCenter,
                child: Text(
                  "Create an account!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
