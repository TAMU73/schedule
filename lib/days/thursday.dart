import 'package:flutter/material.dart';
import 'package:schedule/classes.dart';
import '../cardClass.dart';

class Thursday extends StatefulWidget {
  @override
  _ThursdayState createState() => _ThursdayState();
}

class _ThursdayState extends State<Thursday> {
  List<ClassSchedule> thursdaySchedule= [
    ClassSchedule(day: 'Thursday', module: 'Network and OS',
        teacher: 'Puranjan Acharya', type: 'Tutorial',
        room: 'SR07 - Seminar Room',time: '12:00 - 1:00'),
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
