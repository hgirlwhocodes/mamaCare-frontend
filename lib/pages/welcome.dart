import 'package:flutter/material.dart';

import './home.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WelcomePageState();
  }
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/bear.png"),
            SizedBox(height: 10.0),
            Center(
              child: Text('MAMACARE',
                  style: TextStyle(
                      fontFamily: 'Roboto-Regular',
                      fontSize: 24.0,
                      letterSpacing: 10.0,
                      color: Theme.of(context).primaryColor
                      )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 150.0,
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'By clicking below, you agree to our privacy policy, terms and conditions.',
                style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Roboto-Regular'), //missing underline
              ),
              SizedBox(
                height: 15.0,
              ),
              RaisedButton(
                child: Text(
                  'GET STARTED',
                  style: TextStyle(
                      fontFamily: 'Roboto-Bold',
                      fontSize: 14.0,
                      color: Colors.white),
                ),
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomePage()
                    )
                  );
                },
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
