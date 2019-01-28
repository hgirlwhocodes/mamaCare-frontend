import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './drawer.dart';
import './profile.dart';

class DailyCheckinPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DailyCheckinPageState();
  }
}

class _DailyCheckinPageState extends State<DailyCheckinPage> {
  double  currMood = 0.0; 
  double  currPain = 0.0;  
  double _volume = 0.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
        appBar: AppBar(
          title: Text('Daily Check-In'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications_active),
              tooltip: 'Notifications',
              onPressed: () {},
            ),
          ],
        ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
        
            children: <Widget>[
              SizedBox(height: 70.0,),
               Text('Mood',
                  style: TextStyle(
                      fontFamily: 'Roboto-Regular',
                      fontSize: 24.0,
                      letterSpacing: 5.0,
                      color: Colors.blue)
            ),
            SizedBox(height: 50.0,),
            Wrap(
              spacing: 8.0, // gap between adjacent chips
  runSpacing: 4.0, // gap between lines
  direction: Axis.horizontal, children: <Widget>[
              FlatButton(
                onPressed: () => {},
                color: Colors.orange[200],
                child: Column( // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(Icons.star_border),
                    Text("Bad")
                  ],
                ),
              ),
              
              FlatButton(
                onPressed: () => {},
                color: Colors.orange[200],
                child: Column( // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(Icons.star_half),
                    Text("OK")
                  ],
                ),
              ),
              FlatButton(
                onPressed: () => {},
                color: Colors.orange[200],
                child: Column( // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(Icons.star),
                    Text("Good")
                  ],
                ),
              ),
              FlatButton(
                onPressed: () => {},
                color: Colors.orange[200],
                child: Column( // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(Icons.star),
                    Text("Fantastic")
                  ],
                ),
              ),
            ],),
            SizedBox(height: 50.0,),
              Text('Pain',
                  style: TextStyle(
                      fontFamily: 'Roboto-Regular',
                      fontSize: 24.0,
                      letterSpacing: 5.0,
                      color: Colors.blue),
            ),
            SizedBox(height: 50.0,),
            Slider(value: 0.0, min: 0.0, max: 10.0, divisions: 10, onChanged: (newValue) {
              setState(() { currPain = newValue; });
            },),
            SizedBox(height: 50.0,),
            RaisedButton(child: Text('Submit'), textColor: Colors.white, color: Theme.of(context).primaryColor, onPressed: () {
               Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
            },)
            ],
          ),  
        ),
    );
  }
}