import 'package:flutter/material.dart';
import './start.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  String _email = '';
  String _password = '';

  bool isVerified = false;
  Widget _buildEmailTextField() {
    return TextField(
      style: TextStyle(
          fontFamily: 'Roboto-Regular',
          fontSize: 11.0,
          color: Color.fromRGBO(0, 0, 0, 0.87)),
      decoration: InputDecoration(labelText: 'Email'),
      keyboardType: TextInputType.text,
      onChanged: (String value) {
        setState(() {
          _email = value;
        });
      },
    );
  }

  Widget _buildPasswordTextField() {
    return TextField(
      style: TextStyle(
          fontFamily: 'Roboto-Regular',
          fontSize: 11.0,
          color: Color.fromRGBO(0, 0, 0, 0.87)),
      decoration: InputDecoration(labelText: 'Password'),
      obscureText: true,
      keyboardType: TextInputType.text,
      onChanged: (String value) {
        setState(() {
          _password = value;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 550.0 ? 500.0 : deviceWidth * 0.95;
    final double targetPadding = deviceWidth - targetWidth;

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: targetPadding / 1.5),
        margin: EdgeInsets.all(15.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildEmailTextField(),
              _buildPasswordTextField(),
              SizedBox(
                height: 30.0,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    RaisedButton(
                      child: Text(
                        'Submit',
                        style: TextStyle(
                            fontFamily: 'Roboto-Bold', fontSize: 16.0),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                  builder: (context) => StartPage()
            ));
                      },
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
