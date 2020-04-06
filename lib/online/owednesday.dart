import 'package:flutter/material.dart';
import 'package:schedule/classes.dart';
import '../cardClass.dart';

class OWednesday extends StatefulWidget {
  @override
  _OWednesdayState createState() => _OWednesdayState();
}

class _OWednesdayState extends State<OWednesday> {
  List<ClassSchedule> wednesdaySchedule= [
    ClassSchedule(day: 'Wednesday', module: 'Professional Issues and Ethics',
        teacher: 'Aadesh Tandukar', type: 'Tutorial',
        room: 'Google Live Streaming [QA]',time: '10:00 - 11:30'),
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
