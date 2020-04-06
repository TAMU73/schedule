import 'package:flutter/material.dart';
import 'package:schedule/classes.dart';
import '../cardClass.dart';

class Wednesday extends StatefulWidget {
  @override
  _WednesdayState createState() => _WednesdayState();
}

class _WednesdayState extends State<Wednesday> {
  List<ClassSchedule> wednesdaySchedule= [
    ClassSchedule(day: 'Wednesday', module: 'Software Engineering',
        teacher: 'Mukesh Regmi', type: 'Lecture',
        room: 'Buckingham Palace',time: '8:30 - 10:00'),
    ClassSchedule(day: 'Wednesday', module: 'Emerging Programming',
        teacher: 'Dhruba Sen', type: 'Lecture',
        room: 'Buckingham Palace',time: '12:00 - 1:30'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: wednesdaySchedule.map((wednesdaySchedule) => CardClass(
            classes: wednesdaySchedule
        )).toList(),
      ),
    );
  }
}
