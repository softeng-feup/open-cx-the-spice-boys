import 'package:flutter/material.dart';
import 'package:flutter_app_test/MapScreen.dart';
import 'package:flutter_app_test/OptionsScreen.dart';
import 'secondScreen.dart';
import 'HowToUseScreen.dart';
import 'OptionsScreen.dart';
import 'package:flutter/cupertino.dart';
import 'SearchScreen.dart';
import 'components/CustomRaisedButton.dart';

import 'components/constants.dart';

///  Attempt at creating colors
MaterialColor colorCustom = MaterialColor(0xFF880E4F, colorPallete);


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
        "/": (context) => new LoginScreen(),
        "/main": (context) => new MyHomePage(),
        "/SecondPage": (context) => new SecondScreen(),
        "/CheckMap": (context) => new MapScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

/// Starting Homepage -> After Log in
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: colorPallete[900],
      body:  new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            new Container(
                padding: EdgeInsetsDirectional.fromSTEB(18, 0,0 ,0) ,
                child:
                new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Padding(padding: EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height * 0.004 )),
                      new Image.asset('assets/images/toplogo_light.png',
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.topCenter,
                      ),
                      ])),
            new Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03)),

            new SimpleFlatButton(buttonText: "How to use?", onPressFunction: buttonPressedHowToUse),

            new SimpleButton( buttonText: "Search",onPressFunction: buttonPressedSearch),

            new Padding(
              padding: EdgeInsets.all( MediaQuery.of(context).size.height * 0.05),
            ),

            new SimpleButton( buttonText: "Options" , onPressFunction: buttonPressedOptions),

            new SimpleButton( buttonText: "Check Map", onPressFunction: buttonPressedMap)

          ]),
    );
  }
  /// Functions implementation
  void buttonPressedSearch(){
      Navigator.of(context).push(
          CupertinoPageRoute<Null>(builder: (BuildContext context) {
            return new SearchScreen();
          }));
    }

  void buttonPressedHowToUse() {
    Navigator.of(context).push(
        CupertinoPageRoute<Null>(builder: (BuildContext context) {
          return new HowToUseScren();
        }));
  }
  void buttonPressedMap() {
    Navigator.of(context).push(
        CupertinoPageRoute<Null>(builder: (BuildContext context) {
          return new MapScreen();
        }));
  }
  void buttonPressedOptions() {
    Navigator.of(context).push(
        CupertinoPageRoute<Null>(builder: (BuildContext context) {
          return new OptionsScreen();
        }));
  }
}


/// LOGIN-screen
class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);
  @override
  _LoginScreen createState() => new _LoginScreen();
}

/// LOGIN-screen
class _LoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: colorPallete[900],
      body:  SingleChildScrollView(
        child: Stack(
          children: <Widget>[
      new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            new Padding( padding: EdgeInsets.all( MediaQuery.of(context).size.height * 0.01)),

            /// logo
            new Container(
              height: MediaQuery.of(context).size.height * 0.26,
              child: new Image.asset('assets/images/mainLogo.png', fit: BoxFit.scaleDown),
            ),
          
            new Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.05)),

            new Container(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.06 ),
              child:
              new Text("Username",
                  //textAlign: TextAlign.center,
                  style: subTitleStyle)),

            /// Forms to username and password
            new Container(
                color: colorPallete[800],
                child:
                new TextFormField( obscureText: false,
                  decoration: new InputDecoration(contentPadding: const EdgeInsets.all(16.0)),
                )            )
            ,

            new Padding(padding: EdgeInsets.all( MediaQuery.of(context).size.height * 0.02)),

            new Container(
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.06 ),
                child:
                new Text("Password",
                    //textAlign: TextAlign.center,
                    style: subTitleStyle)),

            new Container(
                color: colorPallete[800],
                child:
                  new TextFormField( obscureText: true,
                    decoration: new InputDecoration(contentPadding: const EdgeInsets.all(16.0))
            )            )
            ,
            new Padding(padding: EdgeInsets.all( MediaQuery.of(context).size.height * 0.0125)),
            new SimpleButton(buttonText: "Login", onPressFunction: logInAttempt),    //TODO define log in function


          ])],
        )));
    }
  /// Functions implementation
  void logInAttempt() {
        Navigator.pushReplacementNamed(context, '/main');
//        Navigator.pushNamed(context, '/main');
  }
}
