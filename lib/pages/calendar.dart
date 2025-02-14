import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';
import './drawer.dart';

class CalendarViewApp extends StatelessWidget {
  void handleNewDate(date) {
    print("handleNewDate ${date}");
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Calendar'),
        ),
        drawer: DrawerPage(),
        body: new Container(
          margin: new EdgeInsets.symmetric(
            horizontal: 5.0,
            vertical: 10.0,
          ),
          child: new ListView(
            shrinkWrap: true,
            children: <Widget>[
              new Text('The Default Calendar:'),
              new Calendar(
                isExpandable: true,
                onSelectedRangeChange: (range) =>
                    print("Range is ${range.item1}, ${range.item2}"),
                onDateSelected: (date) => handleNewDate(date),
              ),
              new Divider(
                height: 50.0,
              ),
              new Text('The Expanded Calendar:'),
              new Calendar(
                onSelectedRangeChange: (range) =>
                    print("Range is ${range.item1}, ${range.item2}"),
                isExpandable: true,
              ),
              new Divider(
                height: 50.0,
              ),
              new Text('A Custom Weekly Calendar:'),
              new Calendar(
                onSelectedRangeChange: (range) =>
                    print("Range is ${range.item1}, ${range.item2}"),
                isExpandable: true,
                dayBuilder: (BuildContext context, DateTime day) {
                  return new InkWell(
                    onTap: () => print("OnTap ${day}"),
                    child: new Container(
                      decoration: new BoxDecoration(
                          border: new Border.all(color: Colors.black38)),
                      child: new Text(
                        day.day.toString(),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}