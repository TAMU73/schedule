import 'package:flutter/material.dart';
import 'package:schedule/profile/edit_profile.dart';
import 'package:schedule/profile/final_profile.dart';
import 'package:schedule/user.dart';

class Profile extends StatefulWidget {

  final User user;

  Profile({this.user});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  bool showEdit = false;

  void toggleView() {
    setState(() {
      showEdit = !showEdit;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showEdit) {
      return EditProfile(toggleView: toggleView);
    } else {
      return FinalProfile(toggleView: toggleView, user: widget.user);
    }
  }
}
