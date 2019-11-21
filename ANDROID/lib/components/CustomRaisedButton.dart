import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class SimpleButton extends RaisedButton
{
  final String buttonText;
  final Function onPressFunction;

  SimpleButton(
      {
        @required this.buttonText,
        @required this.onPressFunction
      }
      );

  @override
  Widget build(BuildContext context) => RaisedButton(
      key: null,
      onPressed: onPressFunction,    //Todo
      color: const Color(0xFFe0e0e0),
      child: new Text(
        buttonText,
        style: new TextStyle(
            fontSize: 32.0,
            color: const Color(0xFF000000),
            fontWeight: FontWeight.w700,
            fontFamily: FONTFAMILY),
      ));
}

class SimpleFlatButton extends FlatButton
{
  final String buttonText;
  final Function onPressFunction;

  SimpleFlatButton(
      {
        @required this.buttonText,
        @required this.onPressFunction
      }
      );

  @override
  Widget build(BuildContext context) => RaisedButton(
      key: null,
      onPressed: onPressFunction,    //Todo
      color: const Color(0x00000000),
      child: new Text(
            buttonText,
            style: new TextStyle(
                fontSize: 20.0,
                color: const Color(0xFFFFFFFF),
                fontWeight: FontWeight.w400,
                fontFamily: FONTFAMILY),
            ));
}

/// LOGO + return to previous screen arrow
class SpearchLogo extends Container
{
  @override
  Widget build(BuildContext context) =>Container(
    padding: EdgeInsets.all( MediaQuery.of(context).size.width * 0.006),

    child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
children: <Widget> [
  Material(
      child: InkWell(
        onTap: () { Navigator.pop(context);},
        child: Container(
          color: colorPallete[900],
            child: Image.asset('assets/images/backArrow.png',fit: BoxFit.scaleDown,
                width: 50.0, height: 50.0),
         ),
      )
  ),

  new Padding(padding: EdgeInsets.all( 15)),
  new Image.asset(
      'assets/images/toplogo_light.png',
      fit: BoxFit.scaleDown,
    ),

     ])
  );
}

