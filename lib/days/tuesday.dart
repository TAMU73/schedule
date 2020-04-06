import 'package:flutter/material.dart';
import 'package:schedule/classes.dart';
import '../cardClass.dart';

class Tuesday extends StatefulWidget {
  @override
  _TuesdayState createState() => _TuesdayState();
}

class _TuesdayState extends State<Tuesday> {
  List<ClassSchedule> tuesdaySchedule= [
    ClassSchedule(day: 'Tuesday', module: 'Network and OS',
        teacher: 'Dipeshwor Silwal', type: 'Lecture',
        room: 'Westminster Palace',time: '8:30 - 10:00'),
    ClassSchedule(day: 'Tuesday', module: 'Professional Issues and Ethics',
        teacher: 'Prashant Shrestha', type: 'Lecture',
        room: 'Westminster Palace',time: '10:00 - 11:30'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: tuesdaySchedule.map((tuesdaySchedule) => CardClass(
            classes: tuesdaySchedule
        )).toList(),
      ),
    );
  }
}
