import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schedule/user.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  User _changeName(String name){
    return User(name: name);
  }
  final _controller = new TextEditingController();
  bool _isEnabled = true;


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
          padding: const EdgeInsets.fromLTRB(20,20,20,20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey[900],
//                  backgroundImage: AssetImage('assets/profile.jpg'),
                  radius: 50,
                ),
              ),
              Divider(
                height: 40,
                color: Colors.grey[900],
                thickness: 1.5,
              ),
              Text('NAME',style: TextStyle(
                fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                letterSpacing: 1,
              )),
              SizedBox(height: 10),
//              Text('Sanjiv Gurung',style: TextStyle(
//                fontWeight: FontWeight.bold,
//                fontSize: 35,
//                color: Colors.amber,
//                letterSpacing: 1,
//              )),
                  TextField(
                    controller: _controller,
                    onEditingComplete: () {
                      String name = _controller.text;
                      _changeName(name);
                    },
                    decoration: InputDecoration(
                      hintText: "******"),
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                      letterSpacing: 1,
                    ),
                    enabled: _isEnabled,
                  ),
              SizedBox(height: 25),
              Text('CLASS',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.white,
                letterSpacing: 1,
              ),),
              SizedBox(height: 10),
//              Text('L2C7',style: TextStyle(
//                fontSize: 20,
//                color: Colors.amber,
//                letterSpacing: 1,
//              )),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'L2C7'),
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                      letterSpacing: 1,
                    ),
                    enabled: _isEnabled,
                  ),
              SizedBox(height: 25),
              Text('LONDONMET ID',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.white,
                letterSpacing: 1,
              ),),
              SizedBox(height: 10,),
//              Text('18030097',style: TextStyle(
//                fontSize: 20,
//                color: Colors.amber,
//                letterSpacing: 1,
//              )),
                  TextField(
                    decoration: InputDecoration(
                        hintText: '180300**'),
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                      letterSpacing: 1,
                    ),
                    enabled: _isEnabled,
                  ),
              SizedBox(height: 25),
              Text('COLLEGE ID',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.white,
                letterSpacing: 1,
              ),),
              SizedBox(height: 10,),
//              Text('NP01CP4A180230',style: TextStyle(
//                fontSize: 20,
//                color: Colors.amber,
//                letterSpacing: 1,
//              )),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'NP01CP4A180***'),
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                      letterSpacing: 1,
                    ),
                    enabled: _isEnabled,
                  ),
              SizedBox(height: 25),
              Row(
                children: <Widget>[
                  Icon(Icons.email,color: Colors.white),
                  SizedBox(width: 10,),
//                  Text('np01cp4a180230@islingtoncollege.edu.np',style: TextStyle(
//                    fontSize: 15,
//                    color: Colors.white,
//                    letterSpacing: 1,
//                  )),
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'np01cp4a180***@islingtoncollege.edu.np'),
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1,
                          ),
                          enabled: _isEnabled,
                        ),
                      ),
                ],
              ),
              FlatButton.icon(
                icon: Icon(_isEnabled ? Icons.assignment_turned_in : Icons.edit),
                label: Text(_isEnabled ? "Ok" : "Edit"),
                onPressed: () {
                  setState(() {
                    _isEnabled = !_isEnabled;
                  });
              },
              )

            ],
          ),
        ),
      ),
    );
  }
}

