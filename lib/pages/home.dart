import 'package:flutter/material.dart';
import './login.dart';
import './signup.dart';

class HomePage extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            //leading: Icon(Icons.arrow_back),
            title: Text('Get Started', style: TextStyle(fontSize: 20.0),),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  child: Text('LOGIN', style: TextStyle(fontSize: 14.0),),
                ),
                Tab(
                  child: Text('SIGNUP', style: TextStyle(fontSize: 14.0),),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              LoginPage(),
              SignupPage()
            ],
          ),
        ),
      );
    }
}
