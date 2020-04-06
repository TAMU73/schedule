import 'package:flutter/material.dart';
import 'package:schedule/classes.dart';
import '../cardClass.dart';

class OThursday extends StatefulWidget {
  @override
  _OThursdayState createState() => _OThursdayState();
}

class _OThursdayState extends State<OThursday> {
  List<ClassSchedule> thursdaySchedule= [
    ClassSchedule(day: 'Thursday', module: 'Network and OS',
        teacher: 'Puranjan Acharya', type: 'Lab',
        room: 'Feedback Session',time: '12:00 - 1:00'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: thursdaySchedule.map((thursdaySchedule) => CardClass(
            classes: thursdaySchedule
        )).toList(),
      ),
    );
  }
}
