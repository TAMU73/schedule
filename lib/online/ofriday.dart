import 'package:flutter/material.dart';
import 'package:schedule/classes.dart';
import '../cardClass.dart';

class OFriday extends StatefulWidget {
  @override
  _OFridayState createState() => _OFridayState();
}

class _OFridayState extends State<OFriday> {
  List<ClassSchedule> fridaySchedule= [
    ClassSchedule(day: 'Friday', module: 'Software Engineering',
        teacher: 'Mukesh Regmi', type: 'Lab',
        room: 'Feedback Session',time: '7:00 - 8:30'),

    ClassSchedule(day: 'Friday', module: 'Emerging Programming',
        teacher: 'Prithvi Maharjan', type: 'Tutorial',
        room: 'Feedback Session',time: '10:00 - 11:00'),
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
