import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:schedule/online/ofriday.dart';
import 'package:schedule/online/omonday.dart';
import 'package:schedule/online/osunday.dart';
import 'package:schedule/online/othursday.dart';
import 'package:schedule/online/otuesday.dart';
import 'package:schedule/online/owednesday.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> with SingleTickerProviderStateMixin {

  TabController tab;
  int todayTab;

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
    tab = TabController(length: 6, vsync: this, initialIndex: todayTab);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[900],
            leading: Icon(Icons.cast, color: Colors.white, ),
            centerTitle: true,
            title: Text('Online Live Sessions',style: TextStyle(color: Colors.white)),
            bottom: TabBar(
              controller: tab,
                labelStyle: TextStyle( //up to your taste
                  fontSize: 20,
                ),
                indicatorSize: TabBarIndicatorSize.label, //makes it better
                labelColor: Colors.amber, //Google's sweet blue
                unselectedLabelColor: Color(0xff5f6368), //nice grey
                isScrollable: true, //up to your taste
                indicator: MD2Indicator( //it begins here
                    indicatorHeight: 3,
                    indicatorColor: Color(0xff1a73e8),
                    indicatorSize: MD2IndicatorSize.normal //3 different modes tiny-normal-full
                ),
                tabs: <Widget>[
                  Tab(
                    text: "Sunday",
                  ),
                  Tab(
                    text: "Monday",
                  ),
                  Tab(
                    text: "Tuesday",
                  ),
                  Tab(
                    text: "Wednesday",
                  ),
                  Tab(
                    text: "Thursday",
                  ),
                  Tab(
                    text: "Friday",
                  )
            ]),
          ),
          backgroundColor: Colors.grey[800],
          body: TabBarView(
            controller: tab,
            children: <Widget>[
              OSunday(),
              OMonday(),
              OTuesday(),
              OWednesday(),
              OThursday(),
              OFriday(),
            ],
          ),
        ),
      ),
    );
  }
}
