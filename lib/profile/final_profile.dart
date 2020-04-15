import 'package:flutter/material.dart';
import 'package:schedule/user.dart';

class FinalProfile extends StatelessWidget {

  final User user;

  final Function toggleView;

  FinalProfile({this.toggleView, this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.account_circle, color: Colors.white, ),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        title: Text('Profile',style: TextStyle(color: Colors.white),),
      ),
      backgroundColor: Colors.grey[800],
      body: Column(
        children: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.edit),
            label: Text("edit"),
            onPressed: () {
              toggleView();
            },
          )
        ],
      ),
    );
  }
}