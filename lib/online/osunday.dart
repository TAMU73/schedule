import 'package:flutter/material.dart';
import 'package:schedule/classes.dart';
import '../cardClass.dart';

class OSunday extends StatefulWidget {
  @override
  _OSundayState createState() => _OSundayState();
}

class _OSundayState extends State<OSunday> {
  List<ClassSchedule> sundaySchedule= [
    ClassSchedule(day: 'Sunday', module: 'Emerging Programing',
        teacher: 'Dhruba Sen', type: 'Lecture',
        room: 'Google Live Streaming [QA]',time: '8:30 - 10:00'),

    ClassSchedule(day: 'Sunday', module: 'Network and OS',
        teacher: 'Dipeshwor Silwal', type: 'Lecture',
        room: 'Google Live Streaming [QA]',time: '10:00 - 11:30'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: sundaySchedule.map((sundaySchedule) => CardClass(
            classes: sundaySchedule
        )).toList(),
      ),
    );
  }
}
