import 'package:flutter/material.dart';
import 'package:flutter_app_test/components/constants.dart';
import 'components/CustomRaisedButton.dart';


class SearchScreen_speaker extends StatefulWidget {
  SearchScreen_speaker({Key key}) : super(key: key);
  @override
  _SearchScreen_speaker createState() => new _SearchScreen_speaker();
}

class _SearchScreen_speaker extends State<SearchScreen_speaker> {
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
                  "Spreach your Speaker",
                  textAlign: TextAlign.center,
                  style: subTitleStyle),

              new TextFormField(style: subTitleStyle,
                    decoration: InputDecoration(
                      labelText: 'Speaker name'
                    ), onSaved: (String value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    // validator: (String value) {
                    //   return value.contains('@') ? 'Do not use the @ char.' : null;
                    // },
                  ),




            ]));
  }
}
