import 'package:flutter/material.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:schedule/days/sunday.dart';
import '../days/friday.dart';
import '../days/monday.dart';
import '../days/thursday.dart';
import '../days/tuesday.dart';
import '../days/wednesday.dart';
class Schedule extends StatefulWidget {
  @override
  _ScheduleState createState() => _ScheduleState();
}
class _ScheduleState extends State<Schedule> with SingleTickerProviderStateMixin {

  TabController tab;
  int todayTab;
  final List<Widget> _tabs= <Widget>[
    Tab(text: "Sunday"),
    Tab(text: "Monday"),
    Tab(text: "Tuesday"),
    Tab(text: "Wednesday"),
    Tab(text: "Thursday"),
    Tab(text: "Friday")
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DateTime day = DateTime.now();
    if(day.weekday>5) {
      todayTab = 0;
    }
    else{
      todayTab = day.weekday;
    }
    tab = TabController(length: _tabs.length, vsync: this, initialIndex: todayTab);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          leading: Icon(Icons.calendar_today,color: Colors.white),
          centerTitle: true,
          title: Text('Schedule',style: TextStyle(color: Colors.white)),
          bottom: TabBar(
            controller: tab,
            labelStyle: TextStyle( //up to your taste
              fontSize: 20,
            ),
            indicatorSize: TabBarIndicatorSize.tab, //makes it better
            labelColor: Colors.amber,
            unselectedLabelColor: Colors.grey, //nice grey
            isScrollable: true, //up to your taste
            indicator: BubbleTabIndicator(
              indicatorHeight: 33.0,
              indicatorColor: Colors.blue[800],
              tabBarIndicatorSize: TabBarIndicatorSize.tab,
            ),
            tabs: _tabs,
          ),
        ),
        backgroundColor: Colors.grey[800],
        body: TabBarView(
          controller: tab,
          children: <Widget>[
            Sunday(),
            Monday(),
            Tuesday(),
            Wednesday(),
            Thursday(),
            Friday()
          ],
        ),
      ),
    );
  }
}
