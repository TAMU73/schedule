import 'package:flutter/material.dart';
import 'package:schedule/classes.dart';
import '../cardClass.dart';

class Monday extends StatefulWidget {
  @override
  _MondayState createState() => _MondayState();
}

class _MondayState extends State<Monday> {
  List<ClassSchedule> mondaySchedule= [
    ClassSchedule(day: 'Monday', module: 'Software Engineering',
        teacher: 'Mukesh Regmi', type: 'Lab',
        room: 'SR08 - Seminar Room',time: '8:30 - 10:00'),
    ClassSchedule(day: 'Monday', module: 'Emerging Programing',
        teacher: 'Prithvi Maharjan', type: 'Lab',
        room: 'SR08 - Seminar Room',time: '10:00 - 11:00'),
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
