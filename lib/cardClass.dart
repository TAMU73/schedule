import 'package:flutter/material.dart';
import 'classes.dart';

class CardClass extends StatelessWidget {

  final ClassSchedule classes;

  CardClass({this.classes});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      color: Colors.grey[900],
      margin: EdgeInsets.fromLTRB(10,20,10,20),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              classes.day,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.amber,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              classes.module,
              style: TextStyle(
                fontSize: 19.0,
                letterSpacing: 1,
                color: Colors.cyanAccent,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              classes.teacher,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              classes.type,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.blue[800],
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              classes.room,
              style: TextStyle(
                fontSize: 19.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              classes.time,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.blue[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}