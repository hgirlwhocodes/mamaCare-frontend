import 'package:flutter/material.dart';
import './drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Sleep {
  int hr;
  int effciency;

  Sleep({this.hr, this.effciency});

  factory Sleep.fromJson(Map<String, dynamic> parsedJson) {
    return Sleep(hr: parsedJson['hr'], effciency: parsedJson['efficiency']);
  }
}

class Activity {
  int calorisBurned;

  Activity({this.calorisBurned});

  factory Activity.fromJson(Map<String, dynamic> parsedJson) {
    return Activity(
      calorisBurned: parsedJson['calorisBurned'],
    );
  }
}

class BloodPressure {
  int systolic;
  int diastolic;

  BloodPressure({this.diastolic, this.systolic});

  factory BloodPressure.fromJson(Map<String, dynamic> parsedJson) {
    return BloodPressure(
        systolic: parsedJson['systolic'], diastolic: parsedJson['diastolic']);
  }
}

class Weight {
  double weight;

  Weight({this.weight});

  factory Weight.fromJson(Map<String, dynamic> parsedJson) {
    return Weight(
      weight: parsedJson['weight'],
    );
  }
}

class Patient {
  Sleep sleep;
  Activity activity;
  BloodPressure bloodPressure;
  Weight weight;

  Patient({this.sleep, this.activity, this.bloodPressure, this.weight});

  factory Patient.fromJson(Map<String, dynamic> json) {
    return Patient(
      sleep: Sleep.fromJson(json["sleep"]),
      activity: Activity.fromJson(json['activity']),
      bloodPressure: BloodPressure.fromJson(json['bloodPressure']),
      weight: Weight.fromJson(json['weight']),
    );
  }
}

Future<Patient> fetchPatient() async {
  final response = await http.get('http://localhost:3000/getLatestReading');

  if (response.statusCode == 200) {
    // If server returns an OK response, parse the JSON
    return Patient.fromJson(json.decode(response.body));
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load post');
  }
}

class StatsPage extends StatelessWidget {
  final Future<Patient> patient;

  StatsPage({Key key, this.patient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Stats',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        drawer: DrawerPage(),
      
        appBar: AppBar(
          title: Text('Daily Stats'),
        ),
        body: Center(
          child: FutureBuilder<Patient>(
            future: fetchPatient(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final String hr = snapshot.data.sleep.hr.toString();
                final String efficiency =
                    snapshot.data.sleep.effciency.toString();
                final String caloriesBurned =
                    snapshot.data.activity.calorisBurned.toString();
                final String systolic =
                    snapshot.data.bloodPressure.systolic.toString();
                final String diastolic =
                    snapshot.data.bloodPressure.diastolic.toString();
                final String weight = snapshot.data.weight.weight.toString();

                return (ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(20.0),
                  children: <Widget>[
                    Text('My Stats',
                        style: TextStyle(
                            fontFamily: 'Roboto-Regular',
                            fontSize: 20.0,
                            letterSpacing: 5.0,
                            color: Colors.blue)),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text("Heart Rate: " + hr,
                        style: TextStyle(
                            fontFamily: 'Roboto-Regular',
                            fontSize: 20.0,
                            letterSpacing: 5.0,
                            color: Colors.blue)),
                    SizedBox(height: 20.0),
                    Text("Sleep Efficiency: " + efficiency,
                        style: TextStyle(
                            fontFamily: 'Roboto-Regular',
                            fontSize: 20.0,
                            letterSpacing: 5.0,
                            color: Colors.blue)),
                    SizedBox(height: 20.0),
                    Text("Calories Burned: " + caloriesBurned,
                        style: TextStyle(
                            fontFamily: 'Roboto-Regular',
                            fontSize: 20.0,
                            letterSpacing: 5.0,
                            color: Colors.blue)),
                    SizedBox(height: 20.0),
                    Text("Systolic: " + systolic + " mmHg",
                        style: TextStyle(
                            fontFamily: 'Roboto-Regular',
                            fontSize: 20.0,
                            letterSpacing: 5.0,
                            color: Colors.blue)),
                    SizedBox(height: 20.0),
                    Text("Diastolic: " + diastolic + " mmHg",
                        style: TextStyle(
                            fontFamily: 'Roboto-Regular',
                            fontSize: 20.0,
                            letterSpacing: 5.0,
                            color: Colors.blue)),
                    SizedBox(height: 20.0),
                    Text("Weight: " + weight + " lbs",
                        style: TextStyle(
                            fontFamily: 'Roboto-Regular',
                            fontSize: 20.0,
                            letterSpacing: 5.0,
                            color: Colors.blue))
                  ],
                ));
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
