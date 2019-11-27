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
              new SimpleFlatButton(
                  buttonText: "Options", onPressFunction: null),

              new VisibilityButton()
            ]));
  }
}


/// Visibily for button
class VisibilityButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The GestureDetector wraps the button.
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(content: Text("Tap"));

        Scaffold.of(context).showSnackBar(snackBar);

      },
      // The custom button
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text('Toogle Visibility'),
      ),
    );
  }
}


// https://api.flutter.dev/flutter/material/ToggleButtons-class.html