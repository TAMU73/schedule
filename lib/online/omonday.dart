import 'package:flutter/material.dart';
import 'package:schedule/classes.dart';
import '../cardClass.dart';

class OMonday extends StatefulWidget {
  @override
  _OMondayState createState() => _OMondayState();
}

class _OMondayState extends State<OMonday> {
  List<ClassSchedule> mondaySchedule= [
    ClassSchedule(day: 'Monday', module: 'Professional Issues and Ethics',
        teacher: 'Yunisha Bajracharya', type: 'Lecture',
        room: 'Google Live Streaming [QA]',time: '8:30 - 10:00'),

    ClassSchedule(day: 'Monday', module: 'Software Engineering',
        teacher: 'Rajesh Dware', type: 'Lecture',
        room: 'Google Live Streaming [QA]',time: '10:00 - 11:00'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: mondaySchedule.map((mondaySchedule) => CardClass(
            classes: mondaySchedule
        )).toList(),
      ),
    );
  }
}
