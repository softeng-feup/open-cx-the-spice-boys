import 'package:flutter/material.dart';

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
              new Image.asset(
                'assets/images/toplogo_light.png',
                fit: BoxFit.scaleDown,
              ),

        // THIS IS A WEIRD WAY TO MAINTAIN STYLING
        new FlatButton(
            key: null,
            onPressed: null,
            child: new Text(
              "", style: new TextStyle(
                  color: const Color(0xFF000000),
                  fontFamily: "Roboto"),
            )),

            new RaisedButton(
                  key: null,
                  onPressed: null,    //Todo
                  color: const Color(0xFFe0e0e0),
                  child: new Text(
                    "People",
                    style: new TextStyle(
                        fontSize: 12.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Roboto"),
                  )),
            new RaisedButton(
                key: null,
                onPressed: null,    //Todo
                color: const Color(0xFFe0e0e0),
                child: new Text(
                  "Key Spots",
                  style: new TextStyle(
                      fontSize: 12.0,
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto"),
                )),


        ]));
  }
}
