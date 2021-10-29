import 'package:flutter/material.dart';
import 'package:pac/main_page.dart';

class NewTask extends StatefulWidget {
  @override
  _NewTaskState createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Color(0xff36b0c1),
            height: 125,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "New Task",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainPage()),
                          );
                        },
                        child:
                            Icon(Icons.house, size: 30.0, color: Colors.white),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            alignment: Alignment.center,
                            fixedSize: Size(35.0, 35.0)),
                      ),
                      /*
                      Container(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.house,
                          size: 30.0,
                          color: Colors.white,
                        ),
                      ),
                      */
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Set Date",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 80.0, 10.0, 0.0),
            child: Text(
              "Task Name",
              style: TextStyle(
                fontSize: 24.0,
                color: Color(0xff36b0c1),
              ),
            ),
          ),
          Container(
            height: 80.0,
            padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
            color: Colors.white,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 25.0, 10.0, 0.0),
            child: Text(
              "Task Description",
              style: TextStyle(
                fontSize: 24.0,
                color: Color(0xff36b0c1),
              ),
            ),
          ),
          Container(
            height: 80.0,
            padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
            color: Colors.white,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 10.0),
            child: Container(
              padding: EdgeInsets.fromLTRB(50.0, 25.0, 50.0, 30.0),
              height: 80.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Color(0xff36b0c1),
              ),
              child: Text(
                "Add!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
