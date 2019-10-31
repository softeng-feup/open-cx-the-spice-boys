import 'package:flutter/material.dart';

class howToUseScren extends StatefulWidget {
  howToUseScren({Key key}) : super(key: key);
  @override
  _howToUseScreen createState() => new _howToUseScreen();
}

class _howToUseScreen extends State<howToUseScren> {
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
