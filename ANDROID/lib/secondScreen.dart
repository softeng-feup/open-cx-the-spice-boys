import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({Key key}) : super(key: key);
  @override
  _SecondScreen createState() => new _SecondScreen();
}

class _SecondScreen extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              new Image.asset('assets/images/mainLogo.png', fit: BoxFit.scaleDown)
            ]));
  }
}