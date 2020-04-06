import 'package:flutter/material.dart';
import 'package:schedule/classes.dart';
import '../cardClass.dart';

class Sunday extends StatefulWidget {
  @override
  _SundayState createState() => _SundayState();
}

class _SundayState extends State<Sunday> {
  List<ClassSchedule> sundaySchedule= [
    ClassSchedule(day: 'Sunday', module: 'Professional Issues and Ethics',
        teacher: 'Aadesh Tandukar', type: 'Tutorial',
        room: 'SR08 - Seminar Room',time: '11:30 - 1:00'),
    ClassSchedule(day: 'Sunday', module: 'Network and OS',
        teacher: 'Puranjan Acharya', type: 'Lab',
        room: 'SR08 - Seminar Room',time: '1:00 - 2:30'),
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
