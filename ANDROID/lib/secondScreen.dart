import 'package:flutter/material.dart';
import 'package:flutter_app_test/components/constants.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({Key key}) : super(key: key);
  @override
  _SecondScreen createState() => new _SecondScreen();
}

class _SecondScreen extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: colorPallete[900],
        body: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Image.asset('assets/images/mainLogo.png', fit: BoxFit.scaleDown)
            ]
        ,

        // add new Widgets here.
        ));
  }
}