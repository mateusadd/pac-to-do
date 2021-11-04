import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final String description;

  TaskCard({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    description,
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
    );
  }
}
