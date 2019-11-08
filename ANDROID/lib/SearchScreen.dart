import 'package:flutter/material.dart';
import 'components/CustomRaisedButton.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key key}) : super(key: key);
  @override
  _SearchScreen createState() => new _SearchScreen();
}

class _SearchScreen extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              new Image.asset( 'assets/images/toplogo_light.png', fit: BoxFit.scaleDown),

              new SimpleFlatButton( onPressFunction: null, buttonText: "Searching"),

              new SimpleButton( onPressFunction: null, buttonText: "New Contact"),

              new SimpleButton( onPressFunction: null, buttonText: "Contact List"),

              new SimpleFlatButton( onPressFunction: null, buttonText: "Places"),

              new SimpleButton( onPressFunction: null, buttonText: "Key Places"),

            ]));
  }
}
