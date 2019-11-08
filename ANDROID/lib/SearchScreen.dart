import 'package:flutter/material.dart';
import 'package:flutter_app_test/SearchScreen_Speaker.dart';
import 'package:flutter_app_test/components/constants.dart';
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
      backgroundColor: colorPallete[900], 
        body: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              new Image.asset( 'assets/images/toplogo_light.png', fit: BoxFit.scaleDown),
              
              new Text(
                  "Peers",
                  textAlign: TextAlign.center,
                  style: subTitleStyle),

              new SimpleButton( onPressFunction: null, buttonText: "Search your Peers"),
              new SimpleButton( onPressFunction: null, buttonText: "Contact List"),

              new Padding(
                padding: const EdgeInsets.all(24.0),
              ),
 
              new Text(
                  "Event",
                  textAlign: TextAlign.center,
                  style: subTitleStyle),

              new SimpleButton( onPressFunction: goToSearchSpeaker, buttonText: "Speaker"),
              new SimpleButton( onPressFunction: null, buttonText: "Event Name"),

            ]));
  }


  void goToSearchSpeaker()
  {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SearchScreen_speaker()));
  }
}
