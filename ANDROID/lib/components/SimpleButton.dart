import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


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
            fontSize: 22.0,
            color: const Color(0xFF000000),
            fontWeight: FontWeight.w500,
            fontFamily: "Roboto"),
      ));
}

class SimpleFlatButton extends RaisedButton
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
      color: const Color(0xFFe0e0e0),
      child: new Text(
            buttonText,
            style: new TextStyle(
            fontSize: 12.0,
            color: const Color(0xFF000000),
            fontWeight: FontWeight.w200,
            fontFamily: "Roboto"),
            ));
}
