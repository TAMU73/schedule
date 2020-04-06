import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:schedule/pages/menu.dart';
import 'package:schedule/pages/profile.dart';
import 'package:schedule/pages/schedule.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  final List<Widget> _widgetOptions = <Widget>[
    Menu(),
    Schedule(),
    Profile(),
  ];

  void onTapped(index) {
    setState(() {
      _page = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          height: 55,
          backgroundColor: Colors.grey[800],
          color: Colors.grey[900],
          index: _page,
          key: _bottomNavigationKey,
          items: <Widget>[
            Icon(Icons.cast, size: 30, color: Colors.white),
            Icon(Icons.home, size: 30, color: Colors.white),
            Icon(Icons.account_circle, size: 30, color: Colors.white),
          ],
          onTap: (index) {
              onTapped(index);
          },
        ),
        backgroundColor: Colors.grey[800],
        body: _widgetOptions.elementAt(_page));
  }
}

