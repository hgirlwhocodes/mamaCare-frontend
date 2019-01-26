import 'package:flutter/material.dart';
import './pages/welcome.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(primaryColor: Colors.pink),
      home: Scaffold(
        body: WelcomePage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
