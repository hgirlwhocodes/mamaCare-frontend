import 'package:flutter/material.dart';
import './calendar.dart';
import './notifications.dart';
import './dashboard.dart';
import './stats.dart';
import './profile.dart';
import './dailycheckin.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (Drawer(
        child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Text('Valeria Rodriguez'),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
        ),
        ListTile(
          title: Text('Profile'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
        ),
         ListTile(
          title: Text('Dashboard'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DashboardPage()),
            );
          },
        ),
        ListTile(
          title: Text('Notifications'),
          onTap: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationsPage()),
            );
          },
        ),
        ListTile(
          title: Text('Daily Check-In'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DailyCheckinPage()),
            );
            // Update the state of the app
            // ...

          },
        ),
        ListTile(
          title: Text('My Stats'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StatsPage()),
            );
          },
        ),
        ListTile(
          title: Text('Calendar'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CalendarViewApp()),
            );
          },
        ),
        ListTile(
          title: Text('Settings *'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
      ],
    )
// We'll populate the Drawer in the next step!
        ));
  }
}
