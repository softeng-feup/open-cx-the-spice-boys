import 'package:flutter/material.dart';
import 'package:flutter_app_test/SearchScreen_Speaker.dart';
import 'package:flutter_app_test/components/constants.dart';
import 'components/CustomRaisedButton.dart';
import 'package:flutter/cupertino.dart';


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
        body:
        SingleChildScrollView(
        child: Stack(
        children: <Widget> [
        new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              new SpearchLogo(),
              new Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01)),

              new SimpleFlatButton(buttonText: "Peers", onPressFunction: null),
//              new Text(
//                  "Peers",
//                  textAlign: TextAlign.center,
//                  style: subTitleStyle),

              new SimpleButton(
                  onPressFunction: null, buttonText: "Search your Peers"),
              new SimpleButton(
                  onPressFunction: null, buttonText: "Contact List"),

              new Padding(
                padding: const EdgeInsets.all(24.0),
              ),

              new SimpleFlatButton(buttonText: "Events", onPressFunction: null),
//              new Text(
//                  "Event",
//                  textAlign: TextAlign.center,
//                  style: subTitleStyle),

              new SimpleButton(
                  onPressFunction: goToSearchSpeaker, buttonText: "Speaker"),
              new SimpleButton(onPressFunction: goToEventName, buttonText: "Event Name"),

            ])])));
  }

  void goToEventName()
  {
    Navigator.of(context).push(
        CupertinoPageRoute<Null>(builder: (BuildContext context) {
          return new SearchScreen_speaker();
        }));
  }

  void goToSearchSpeaker() {
      Navigator.of(context).push(
          CupertinoPageRoute<Null>(builder: (BuildContext context) {
            return new SearchScreen_speaker();
          }));
    }
  }
