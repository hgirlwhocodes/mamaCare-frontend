import 'package:flutter/material.dart';
import './drawer.dart';
import './dashboard.dart';
// 'Did you smoke or drink within 3 months of your pregnancy?'
class Q6Page extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _Q6PageState();
    }
}
class _Q6PageState extends State<Q6Page> {
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
                'Have you gone to at least 4 prenatal visits?',
                style: TextStyle(fontSize: 18.0),
              ),
              RaisedButton(
                child: Text("Yes"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardPage()),
                  );
                },
              ),
              RaisedButton(
                child: Text("No"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardPage()),
                  );
                },
              ),
            ],
          )
        )
          
    );
  }
}