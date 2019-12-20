import 'package:flutter/material.dart';
import 'package:flutter_app_test/components/constants.dart';

class HowToUseScren extends StatefulWidget {
  HowToUseScren({Key key}) : super(key: key);
  @override
  _HowToUseScreen createState() => new _HowToUseScreen();
}


/// Creates a Simple view explaning how to use the app
class _HowToUseScreen extends State<HowToUseScren> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              /// Logo + Exit Arrow
              new Container(
                  padding: EdgeInsets.all( MediaQuery.of(context).size.width * 0.01),
                  child:
                  new SafeArea(child:
                  new Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget> [
                        new Material(
                            child: InkWell(
                              onTap: () { Navigator.pop(context);},
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width * 0.03 ),
//                                color: colorPallete[900],
                                child: Image.asset('assets/images/backArrow.png',fit: BoxFit.scaleDown,
                                    width: (MediaQuery.of(context).size.height * 0.05), height: (MediaQuery.of(context).size.height* 0.05)),
                              ),
                            )
                        ),
                        new Padding(padding: EdgeInsets.all( 15)),
                        new Image.asset(
                          'assets/images/toplogo.png',
                          fit: BoxFit.scaleDown,
                        ),
                      ]))
              ),
              new Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01)),

              new RaisedButton(
                  key: null,
                  onPressed: null,    //Todo
                  child: new Text(
                    "How to use",
                    style: new TextStyle(
                        fontSize: 19.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w800,
                        fontFamily: FONTFAMILY),
                  )),

              new Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01)),

              /// Explanation
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
