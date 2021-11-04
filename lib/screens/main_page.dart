import 'package:flutter/material.dart';
import 'package:pac/connections/get.dart';
import 'package:pac/model/task_model.dart';
import 'package:pac/screens/new_task.dart';
import 'package:pac/widgets/widgets.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late Future<Task> futureTask;

  @override
  void initState() {
    super.initState();
    futureTask = fetchTask();
  }

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
          FutureBuilder<Task>(
            future: futureTask,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return TaskCard(
                  title: snapshot.data!.name,
                  description: snapshot.data!.content,
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              } else {
                return Center(child: const CircularProgressIndicator());
              }
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewTask()),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xff36b0c1),
      ),
    );
  }
}
