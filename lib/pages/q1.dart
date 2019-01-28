import 'package:flutter/material.dart';
import './drawer.dart';
import './q2.dart';

class Q1Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Q1PageState();
  }
}

class _Q1PageState extends State<Q1Page> {
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_active),
            tooltip: 'Notifications',
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Do you have an adequate care team?',
                style: TextStyle(fontSize: 18.0),
              ),
              RaisedButton(
                child: Text("Yes"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Q2Page()),
                  );
                },
              ),
              RaisedButton(
                child: Text("No"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Q2Page()),
                  );
                },
              ),
            ],
          )),
    );
  }
}
