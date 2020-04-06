import 'package:flutter/material.dart';
import 'package:schedule/classes.dart';
import '../cardClass.dart';

class OTuesday extends StatefulWidget {
  @override
  _OTuesdayState createState() => _OTuesdayState();
}

class _OTuesdayState extends State<OTuesday> {
  List<ClassSchedule> tuesdaySchedule= [
    ClassSchedule(day: 'Tuesday', module: 'Software Engineering',
        teacher: 'Rajesh Dware', type: 'Tutorial',
        room: 'Google Live Streaming [QA]',time: '8:30 - 10:00'),

    ClassSchedule(day: 'Tuesday', module: 'Network and OS',
        teacher: 'Puranjan Acharya', type: 'Tutorial',
        room: 'Feedback Session',time: '10:00 - 11:30'),

    ClassSchedule(day: 'Tuesday', module: 'Emerging Programming',
        teacher: 'Prithvi Maharjan', type: 'Tutorial',
        room: 'Feedback Session',time: '12:00 - 1:30'),
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
