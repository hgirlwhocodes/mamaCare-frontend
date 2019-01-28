import 'package:flutter/material.dart';
import './drawer.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Notifications List';

    return MaterialApp(
      title: title,
      theme: new ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        drawer: DrawerPage(),
        body:  ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Phone'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Phone'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Phone'),
              trailing: Text("2 days ago"),
            )
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}