import 'package:flutter/material.dart';
import 'package:flutter_app_test/MapScreen.dart';
import 'package:flutter_app_test/UserPage.dart';
import 'package:flutter_app_test/components/constants.dart';
import 'components/CustomRaisedButton.dart';


var speakersName = ["Joao", "Gustavo", "Ademar", "Jorge","Tyler Harrison",
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

const thisblue = Color(0xFF243470);


class SearchScreen_speaker extends StatefulWidget {
  SearchScreen_speaker({Key key}) : super(key: key);
  @override
  _SearchScreen_speaker createState() => new _SearchScreen_speaker();
}
class _SearchScreen_speaker extends State<SearchScreen_speaker>
{
  final controller = TextEditingController();

  /// Function that displays the possible speakers when as users writes each letter
  onChangeSpeakerSearch() {
    controller.text;
    speakersList = [];
    for(final speaker in speakersName)
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
  }   /// End of function
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
          SingleChildScrollView(
          child: Stack(
            children: <Widget> [
              new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new SpearchLogo(),

new SimpleFlatButton(buttonText: "Spreach your Speaker", onPressFunction: null),
//                new Text(
//                    "Spreach your Speaker",
//                    textAlign: TextAlign.center,
//                    style: subTitleStyle,),

                new Container(
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.025),
                    height: MediaQuery.of(context).size.height * 0.1,
                  child:
                  TextField(
                  autofocus: true,
                  controller: controller,
                  style: subTitleStyle,
                )),

                  new Container(
                  margin: const EdgeInsets.all(10.0),
                  color: colorPallete[800],
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: MediaQuery.of(context).size.height * 0.67,
                  child:
                  ListView.separated(
                    separatorBuilder: (BuildContext context, int index) => const Divider(
                      thickness: 3,
                      color: thisblue,
                    ),
                    // Let the ListView know how many items it needs to build.
                    itemCount: speakersList.length,
                    itemBuilder: (context, index) {
                      final item = speakersList[index];
                        return ListTile(
                          leading:
                          CircleAvatar(
                          backgroundImage: NetworkImage("https://sigarra.up.pt/feup/en/FOTOGRAFIAS_SERVICE.foto?pct_cod=231081"),),
                          title: Text(item,style: infoTitleStyle,),
                          onTap: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => UserPage()));
                            new MapScreen();},
                        );
                    },
                  ),
                ),
              ])])));
    }
}

/// CURRENT BUGS -> speakersList is updated as user writes / deletes letters. But the Widget doesn't update its information.