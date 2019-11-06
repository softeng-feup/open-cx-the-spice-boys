import 'package:flutter/material.dart';

class OptionsScreen extends StatefulWidget {
  OptionsScreen({Key key}) : super(key: key);
  @override
  _OptionsScreen createState() => new _OptionsScreen();
}

class _OptionsScreen extends State<OptionsScreen> {
  @override
    Widget build(BuildContext context) {
      return new Scaffold(
          body: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Image.asset(
                  'assets/images/toplogo_light.png',
                  fit: BoxFit.scaleDown,
                ),
                new FlatButton(
                    key: null,
                    onPressed: null,
                    child: new Text(
                      "How to use?",
                      style: new TextStyle(
                          fontSize: 12.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w200,
                          fontFamily: "Roboto"),
                    )),
                new Container(margin:
                const EdgeInsets.all(10.0),
                    color: Colors.blue[600],
                    width: 48.0,
                    height: 120.0,
                    child:
                    Text(
                      'OPTIONS HERE',
                      style: new TextStyle(
                          fontSize: 40.0,
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w800,
                          fontFamily: "Roboto"),
                    )
                ),
              ]));
    }
  }
