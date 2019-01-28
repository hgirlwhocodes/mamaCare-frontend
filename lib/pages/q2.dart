import 'package:flutter/material.dart';
import './drawer.dart';
import './q3.dart';

class Q2Page extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _Q2PageState();
    }
}
class _Q2PageState extends State<Q2Page> {
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
         appBar: AppBar(
        
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_active),
            tooltip: 'Notifications',
            onPressed: () {},
          ),
        ],
      ),
        body: Container(padding: EdgeInsets.all(20.0),
        child:
  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Have you gone to at least 4 prenatal visits?',
                style: TextStyle(fontSize: 18.0),
              ),
              RaisedButton(
                child: Text("Yes"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Q3Page()),
                  );
                },
              ),
              RaisedButton(
                child: Text("No"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Q3Page()),
                  );
                },
              ),
            ],
          )
        )
          
    );
  }
}