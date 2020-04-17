import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schedule/pages/profile.dart';
import 'package:schedule/profile/final_profile.dart';
import 'package:schedule/user.dart';

class EditProfile extends StatefulWidget {

  final Function toggleView;

  EditProfile({this.toggleView});

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  String name = '';
  String section = '';
  String londonMetID = '';
  String collegeID = '';
  String email = '';


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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30,30,30,20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextField(
                onChanged: (val) {
                  setState(() {
                    name = val;
                  });
                },
                decoration: InputDecoration(
                    hintText: "Name"),
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                onChanged: (val) {
                  setState(() {
                    section = val;
                  });
                },
                decoration: InputDecoration(
                    hintText: 'L2C7'),
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                onChanged: (val) {
                  setState(() {
                    londonMetID = val;
                  });
                },
                decoration: InputDecoration(
                    hintText: '180300**'),
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                onChanged: (val) {
                  setState(() {
                    collegeID = val;
                  });
                },
                decoration: InputDecoration(
                    hintText: 'NP01CP4A180***'),
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(height: 25),
              Row(
                children: <Widget>[
                  Icon(Icons.email,color: Colors.white),
                  SizedBox(width: 10,),
                  Flexible(
                    child: TextField(
                      onChanged: (val) {
                        setState(() {
                          email = val;
                        });
                      },
                      decoration: InputDecoration(
                          hintText: 'np01cp4a180***@islingtoncollege.edu.np'),
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              ),
              FlatButton.icon(
                icon: Icon(Icons.assignment_turned_in),
                label: Text("Ok"),
                onPressed: () {
                  User users = User(name: name, section: section, collegeID: collegeID, londonMetID: londonMetID, email: email);
                  print(users.section);
                  FinalProfile(user: users);
                  widget.toggleView();
                },
              )

            ],
          ),
        ),
      ),
    );
  }
}

