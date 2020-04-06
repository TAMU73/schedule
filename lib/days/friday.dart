import 'package:flutter/material.dart';
import 'package:schedule/classes.dart';
import '../cardClass.dart';

class Friday extends StatefulWidget {
  @override
  _FridayState createState() => _FridayState();
}

class _FridayState extends State<Friday> {
  List<ClassSchedule> fridaySchedule= [
    ClassSchedule(day: 'Friday', module: 'Software Engineering',
        teacher: 'Mukesh Regmi', type: 'Tutorial',
        room: 'Patan',time: '7:00 - 8:00'),
    ClassSchedule(day: 'Friday', module: 'Emerging Programming',
        teacher: 'Prithvi Maharjan', type: 'Tutorial',
        room: 'Pokhara',time: '9:00 - 10:30'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: fridaySchedule.map((fridaySchedule) => CardClass(
            classes: fridaySchedule
        )).toList(),
      ),
    );
  }
}
