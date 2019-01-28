import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './drawer.dart';
import './stats.dart';
import 'package:http/http.dart' as http;

class BloodPressure {
  int systolic;
  int diastolic;

  BloodPressure({this.systolic, this.diastolic});

  factory BloodPressure.postJson(Map<String, dynamic> parsedJson) {
    return BloodPressure(systolic: parsedJson['systolic'], diastolic: parsedJson['diastolic']);
  }
}

// Future<BloodPressure> createPost(BloodPressure post) async {
//   final response = await http.post('http://localhost:3000/forTwilio',
//       body: postToJson(post));
//   return postFromJson(response.body);
// }

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProfilePageState();
  }
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        title: Text('Profile'),
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
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Text('Valeria Rodriguez',
                  style: TextStyle(
                      fontFamily: 'Roboto-Regular',
                      fontSize: 24.0,
                      letterSpacing: 5.0,
                      color: Colors.blue)),
              SizedBox(
                height: 50.0,
              ),
              Text('Age: 25',
                  style: TextStyle(
                      fontFamily: 'Roboto-Regular',
                      fontSize: 24.0,
                      letterSpacing: 5.0,
                      color: Colors.blue)),
              SizedBox(
                height: 50.0,
              ),
              Text('Race: Hispanic',
                  style: TextStyle(
                      fontFamily: 'Roboto-Regular',
                      fontSize: 24.0,
                      letterSpacing: 5.0,
                      color: Colors.red)),
              SizedBox(
                height: 50.0,
              ),
              Text('Number of pregnancies: 1',
                  style: TextStyle(
                      fontFamily: 'Roboto-Regular',
                      fontSize: 24.0,
                      letterSpacing: 5.0,
                      color: Colors.blue)),
              SizedBox(
                height: 50.0,
              ),
              Text('Drinks alcohol: Yes',
                  style: TextStyle(
                      fontFamily: 'Roboto-Regular',
                      fontSize: 24.0,
                      letterSpacing: 5.0,
                      color: Colors.red)),
              SizedBox(
                height: 50.0,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.local_hospital),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('OB/GYN, MD:',
                      style: TextStyle(
                          fontFamily: 'Roboto-Regular',
                          fontSize: 24.0,
                          letterSpacing: 5.0,
                          color: Colors.blue)),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Text('(201)-565-7029',
                  style: TextStyle(
                      fontFamily: 'Roboto-Regular',
                      fontSize: 24.0,
                      letterSpacing: 5.0,
                      color: Colors.blue)),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  RaisedButton(
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: Text('Call'),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  RaisedButton(
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: Text('Send SMS'),
                    onPressed: () {},
                  )
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.face),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('Partner',
                      style: TextStyle(
                          fontFamily: 'Roboto-Regular',
                          fontSize: 24.0,
                          letterSpacing: 5.0,
                          color: Colors.blue)),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Text('(371)-494-2711)',
                  style: TextStyle(
                      fontFamily: 'Roboto-Regular',
                      fontSize: 24.0,
                      letterSpacing: 5.0,
                      color: Colors.blue)),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  RaisedButton(
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: Text('Call'),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  RaisedButton(
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: Text('Send SMS'),
                    onPressed: () {},
                  )
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Enter your systolic blood pressure:"),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Enter your diastolic blood pressure:"),
              ),
              RaisedButton(
                child: Text("Submit"),
                color: Colors.pink[50],
                onPressed: () {},
              ),
              SizedBox(
                height: 50.0,
              ),
              RaisedButton(
                child: Text('View Full Medical Records'),
                textColor: Colors.white,
                color: Colors.brown[300],
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StatsPage()),
                  );
                },
              )
            ],
          )),
    );
  }
}
