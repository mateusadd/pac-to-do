import 'package:flutter/material.dart';
import 'package:pac/new_task.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
                          "Main",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Column(
                          children: [
                            Container(
                              width: 27,
                              height: 3,
                              color: Colors.white,
                            ),
                            Container(
                              width: 27,
                              height: 3,
                              color: Color(0xff36b0c1),
                            ),
                            Container(
                              width: 27,
                              height: 3,
                              color: Colors.white,
                            ),
                            Container(
                              width: 27,
                              height: 3,
                              color: Color(0xff36b0c1),
                            ),
                            Container(
                              width: 27,
                              height: 3,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "01/01/2021",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
            child: Container(
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  ),
                ],
                color: Color(0xffebebeb),
              ),
              child: Row(
                children: [
                  Container(
                    width: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xff36b0c1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Task Example",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Description Example",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 280, 15, 15),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NewTask()),
                    );
                  },
                  child: Text('+'),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff36b0c1),
                      alignment: Alignment.center,
                      textStyle: TextStyle(
                        fontSize: 54.0,
                        fontWeight: FontWeight.w100,
                        color: Colors.white,
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(50.0),
                      ),
                      fixedSize: Size(65.0, 65.0)),
                ),
              ),
              /*Container(
                  alignment: Alignment.center,
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xff36b0c1),
                  ),
                  child: Text(
                    "+",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 54,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
                */
            ],
          ),
        ],
      ),
    );
  }
}
