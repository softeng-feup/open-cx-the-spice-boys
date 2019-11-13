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

