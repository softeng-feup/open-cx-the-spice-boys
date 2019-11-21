import 'package:flutter/material.dart';
import 'package:flutter_app_test/components/CustomRaisedButton.dart';
import 'package:flutter_app_test/components/constants.dart';

class HowToUseScren extends StatefulWidget {
  HowToUseScren({Key key}) : super(key: key);
  @override
  _HowToUseScreen createState() => new _HowToUseScreen();
}

class _HowToUseScreen extends State<HowToUseScren> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
          new Image.asset( 'assets/images/toplogo_light.png', fit: BoxFit.scaleDown),

             // new SimpleFlatButton( onPressFunction: null, buttonText: "How to use"),
              new Text("How to use",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                fontSize: 24,
                color: colorPallete[600],
                fontWeight: FontWeight.w400,
                fontFamily: FONTFAMILY,
              )),

            new Container(margin:
            const EdgeInsets.all(10.0),
            color: colorPallete[700],
            width: 48.0,
            child: Container(
                margin: const EdgeInsets.all(10.0),
                width: 48.0,
              child:
                new Text('This is a app to find your peers or any specific speaker for PROGRAMMING 2020.\n'
                    'Keep in mind that peer need to have the visibility active, otherwise you won\'t be able to find them.\n'
                    'Any Problem with this app contact: _____@fe.up.pt',
                style: new TextStyle(
                    fontSize: 20.0,
                    color: const Color(0xFFFFFFFF),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"),
              )
              ,)
          ),
      ]));
}
}
