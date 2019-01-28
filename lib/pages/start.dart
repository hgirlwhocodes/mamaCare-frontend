import 'package:flutter/material.dart';
import './q1.dart';
import './dashboard.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Welcome'),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Pregnant'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Q1Page()
            ));
              },
            ),
            RaisedButton(
              child: Text('Post-Partum'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Q1Page()
            ));
              },
            ),
            RaisedButton(
              child: Text("Skip"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => DashboardPage()
            ));
              },
            ),
          ],
        ));
  }
}
