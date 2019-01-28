import 'package:flutter/material.dart';
import './drawer.dart';
import './q5.dart';
// 
class Q4Page extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _Q4PageState();
    }
}
class _Q4PageState extends State<Q4Page> {
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
        body: Container(padding: EdgeInsets.all(20.0),
        child:
  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
               'How old were you at the time of delivery?',
                style: TextStyle(fontSize: 18.0),
              ),
              RaisedButton(
                child: Text("Yes"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Q5Page()),
                  );
                },
              ),
              RaisedButton(
                child: Text("No"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Q5Page()),
                  );
                },
              ),
            ],
          )
        )
          
    );
  }
}