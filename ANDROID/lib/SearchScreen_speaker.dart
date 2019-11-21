import 'package:flutter/material.dart';
import 'package:flutter_app_test/components/constants.dart';
import 'components/CustomRaisedButton.dart';



var speakers_name = ["Joao", "Gustavo", "Ademar", "Jorge","Tyler Harrison",
  "Frances Payne",
  "Rogelio Gibbs",
  "Chelsea Garza",
  "Eva Graham",
  "Andy Byrd",
  "Cora Franklin",
  "Silvia Burgess",
  "Ida White"];

List speakersList = [];
String spl = "";

List<Widget> listOfUsers = [ Text('test')];


class SearchScreen_speaker extends StatefulWidget {
  SearchScreen_speaker({Key key}) : super(key: key);
  @override
  _SearchScreen_speaker createState() => new _SearchScreen_speaker();
}
class _SearchScreen_speaker extends State<SearchScreen_speaker>
{
  final controller = TextEditingController();

  // Function that displays the possible speakers when as users writes each letter
  onChangeSpeakerSearch() {
    controller.text;
    speakersList = [];
    for(final speaker in speakers_name)
      {
      //TODO create a way to display the names where user can tap on a name to check info about the speaker.
          if (speaker.toUpperCase().contains(controller.text.toUpperCase())) {
            speakersList.add(speaker);

          }
        }

    for(final i in speakersList)  // DEBUG.
    {
      debugPrint('DEBUG' + i);
    }
  }

    void initState() {
      controller.addListener(() {
        //print(controller.text); // DEBUG
        onChangeSpeakerSearch();
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
          body:
              new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Image.asset( 'assets/images/toplogo_light.png',
                    height: MediaQuery.of(context).size.height * 0.20, ),

                new Text(
                    "Spreach your Speaker",
                    textAlign: TextAlign.center,
                    style: subTitleStyle,),

                new TextField(
                  autofocus: true,
                  controller: controller,
                  style: subTitleStyle,
                ),

                new Container(
                  margin: const EdgeInsets.all(10.0),
                  color: colorPallete[800],
                  width: MediaQuery.of(context).size.width * 0.90,
            //      height: MediaQuery.of(context).size.height * 0.60,
                  child:
                    new Text(
                      '${speakersList}'
                    )
//                  new ListView(
//                      padding: const EdgeInsets.all(8),
//                      children: <Widget>[
//
//                        listOfUsers,
//                          // insert widgets here.
//                        ]
//                )
                ),
              ]));
    }
}

/// CURRENT BUGS -> speakersList is updated as user writes / deletes letters. But the Widget doesn't update its information.