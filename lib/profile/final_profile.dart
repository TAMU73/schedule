import 'package:flutter/material.dart';
import 'package:schedule/user.dart';

class FinalProfile extends StatelessWidget {

  final User user = User();

  final Function toggleView;

  FinalProfile({this.toggleView});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),

      ),
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
