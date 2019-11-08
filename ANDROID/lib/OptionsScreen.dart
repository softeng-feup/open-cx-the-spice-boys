import 'package:flutter/material.dart';
import 'package:flutter_app_test/components/CustomRaisedButton.dart';
import 'components/constants.dart';

class OptionsScreen extends StatefulWidget {
  OptionsScreen({Key key}) : super(key: key);
  @override
  _OptionsScreen createState() => new _OptionsScreen();
}

class _OptionsScreen extends State<OptionsScreen> {
  @override
    Widget build(BuildContext context) {
      return new Scaffold(
          backgroundColor: colorPallete[900],
          body: new Column(

              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Image.asset(
                  'assets/images/toplogo_light.png',
                  fit: BoxFit.scaleDown,
                ),
                new SimpleFlatButton(buttonText: "Options", onPressFunction: null),

                new SimpleButton(buttonText: "Toggle visibitly**", onPressFunction: buttonAlert)
              ]));

  }
  void buttonAlert()
  {
    Navigator.of(context).pop();
  }


  }
