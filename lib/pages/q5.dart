import 'package:flutter/material.dart';
import './drawer.dart';
import './q6.dart';

class Q5Page extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _Q5PageState();
    }
}
class _Q5PageState extends State<Q5Page> {
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
                'What is your racial/ethnic background?',
                style: TextStyle(fontSize: 18.0),
              ),
              RaisedButton(
                child: Text("Yes"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Q6Page()),
                  );
                },
              ),
              RaisedButton(
                child: Text("No"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Q6Page()),
                  );
                },
              ),
            ],
          )
        )
          
    );
  }
}