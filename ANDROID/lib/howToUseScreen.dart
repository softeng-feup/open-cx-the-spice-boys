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

          new SimpleFlatButton( onPressFunction: null, buttonText: "How to use"),

            new Container(margin:
          const EdgeInsets.all(10.0),
            color: colorPallete[600],
            width: 48.0,
            height: 120.0,
            child:
                Text('Just keep clicking the buttons and maybe you\'ll get something out of this application.\nAlso check Option for more information',
            style: new TextStyle(
                fontSize: 20.0,
                color: const Color(0xFFFFFFFF),
                fontWeight: FontWeight.w400,
                fontFamily: "Roboto"),
          )
          ),
      ]));
}
}
