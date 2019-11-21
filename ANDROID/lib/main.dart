import 'package:flutter/material.dart';
import 'package:flutter_app_test/OptionsScreen.dart';
import 'secondScreen.dart';
import 'HowToUseScreen.dart';
import 'OptionsScreen.dart';
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
      backgroundColor: colorPallete[900],
      body:  new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new SpearchLogo(),

            new Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.05)),

            new SimpleFlatButton(buttonText: "How to use?", onPressFunction: buttonPressedHowToUse),

            new SimpleButton( buttonText: "Search",onPressFunction: buttonPressedSearch),

            new Padding(
              padding: const EdgeInsets.all(24.0),
            ),

            new SimpleButton( buttonText: "Options" , onPressFunction: buttonPressedOptions),

            new SimpleButton( buttonText: "Check Map", onPressFunction: buttonPressed)

          ]),
    );
  }
  /// Functions implementation
  void buttonPressedSearch(){
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SearchScreen()));
  }
  void buttonPressedHowToUse() {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => HowToUseScren() ));
  }

  void buttonPressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SecondScreen()));
  }
  void buttonPressedOptions() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => OptionsScreen()));
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

            new Padding( padding: EdgeInsets.all( MediaQuery.of(context).size.height * 0.02)),

            /// logo
            new Container(
              height: MediaQuery.of(context).size.height * 0.25,
              child: new Image.asset('assets/images/mainLogo.png', fit: BoxFit.scaleDown),
            ),
          
            new Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.05)),

            /// texto
            new Container(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.06 ),
              child:
              new Text("Username",
                  //textAlign: TextAlign.center,
                  style: subTitleStyle)),

            /// Forms para password e Login.
            new Container(
                color: colorPallete[800],
                child:
                new TextFormField( obscureText: true,
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
            )            )
            ,

            new Padding(padding: EdgeInsets.all( MediaQuery.of(context).size.height * 0.0125)),

            new SimpleButton(buttonText: "Login", onPressFunction: logInAttempt),    //TODO define log in function


          ])],
        )));
    }
  /// Functions implementation
  void logInAttempt() {
        Navigator.pushNamed(context, '/main');
  }
}