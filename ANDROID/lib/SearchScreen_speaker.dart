import 'package:flutter/material.dart';
import 'package:flutter_app_test/components/constants.dart';
import 'components/CustomRaisedButton.dart';


class SearchScreen_speaker extends StatefulWidget {
  SearchScreen_speaker({Key key}) : super(key: key);
  @override
  _SearchScreen_speaker createState() => new _SearchScreen_speaker();
}

class _SearchScreen_speaker extends State<SearchScreen_speaker> {
final controller = TextEditingController();

_printLatestValue() {
  debugPrint("Second text field: ${controller.text}");
}

  void initState() {
    controller.addListener(() {
//      final text = controller.text.toLowerCase();
//      controller.value = controller.value.copyWith(
//        text: text,
//        selection:
//          TextSelection(baseOffset: text.length, extentOffset: text.length),
//          composing: TextRange.empty,
//      );
    _printLatestValue();
    });
    super.initState();
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }

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

              new TextField(
                autofocus: true,
                controller: controller,

//                onSubmitted: (text)
//                {debugPrint(text);},
//                onChanged: (text) {
//                debugPrint(text);              },

                  style: subTitleStyle,
              ),

            ]));
  }
}


