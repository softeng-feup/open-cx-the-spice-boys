import 'package:flutter/material.dart';
import 'secondScreen.dart';
import 'howToUseScreen.dart';

///  Attempt at creating colors
Map<int, Color> blueShades = {
  50: Color.fromRGBO(36, 52, 112, .1),
  100: Color.fromRGBO(36, 52, 112, .2),
  200: Color.fromRGBO(36, 52, 112, .3),
  300: Color.fromRGBO(36, 52, 112, .4),
  400: Color.fromRGBO(36, 52, 112, .5),
  500: Color.fromRGBO(36, 52, 112, .6),
  600: Color.fromRGBO(36, 52, 112, .7),
  700: Color.fromRGBO(36, 52, 112, .8),
  800: Color.fromRGBO(36, 52, 112, .9),
  900: Color.fromRGBO(36, 52, 112, 1),
};
MaterialColor colorCustom = MaterialColor(0xFF880E4F, blueShades);


/// Class to pass arguments through screens
class ScreenArguments {
  final String title;
  final int userID;
  final String message;

  ScreenArguments(this.title, this.userID, this.message);
}

/////////////////////////////////////////////////////////////////////////////////
///////   Below here is the "current app"
void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: colorCustom,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      initialRoute: '/',
      routes: {
        "/": (context) => new MyHomePage(),
        "/SecondPage": (context) => new SecondScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: blueShades[900],
      body:  new Column(
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
                onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => howToUseScren()))
                    },
                child: new Text(
                  "How to use?",
                  style: new TextStyle(
                      fontSize: 12.0,
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w200,
                      fontFamily: "Roboto"),
                )),
            new RaisedButton(
                key: null,
                onPressed: buttonPressed,
                color: const Color(0xFFe0e0e0),
                child: new Text(
                  "Search",
                  style: new TextStyle(
                      fontSize: 12.0,
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w200,
                      fontFamily: "Roboto"),
                )),
            new Padding(
              padding: const EdgeInsets.all(24.0),
            ),
            new RaisedButton(
                key: null,
                onPressed: buttonPressed,
                color: const Color(0xFFe0e0e0),
                child: new Text(
                  "Options",
                  style: new TextStyle(
                      fontSize: 12.0,
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w200,
                      fontFamily: "Roboto"),
                )),
            new RaisedButton(
                key: null,
                onPressed: buttonPressed,
                color: const Color(0xFFe0e0e0),
                child: new Text(
                  "Check Map",
                  style: new TextStyle(
                      fontSize: 20.0,
                      color: const Color(0xFF222000),
                      fontWeight: FontWeight.w200,
                      fontFamily: "Roboto"),
                ))
          ]),
    );
  }

  void buttonPressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SecondScreen()));
  }
}

