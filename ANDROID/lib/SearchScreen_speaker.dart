import 'package:flutter/material.dart';
import 'package:flutter_app_test/MapScreen.dart';
import 'package:flutter_app_test/UserPage.dart';
import 'package:flutter_app_test/components/constants.dart';
import 'components/CustomRaisedButton.dart';
import 'package:flutter_app_test/users.dart';


List speakersList = [];
String spl = "";
List companies = [];
List talks = [];

List<Widget> listOfUsers = [ Text('test')];

const thisblue = Color(0xFF243470);


class SearchScreenSpeaker extends StatefulWidget {
  SearchScreenSpeaker({Key key}) : super(key: key);
  @override
  _SearchScreenSpeaker createState() => new _SearchScreenSpeaker();
}
class _SearchScreenSpeaker extends State<SearchScreenSpeaker>
{
  final controller = TextEditingController();

  /// Function that displays the possible speakers when as users writes each letter
  onChangeSpeakerSearch() {
    controller.text;
    speakersList = [];
    for(final speaker in users)
    {
      String speak= speaker[0];
      String sp = speaker[3];
      if(sp.contains("speaker")) {
        //TODO create a way to display the names where user can tap on a name to check info about the speaker.
        if (speak.toUpperCase().contains(controller.text.toUpperCase())) {
          speakersList.add(speak);
          companies.add(speaker[4]);
          talks.add(speaker[5]);
        }
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
        new SingleChildScrollView(
            child: Stack(
                children: <Widget> [
                  new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        new SpearchLogo(),
                        new Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01)),

                        new SimpleFlatButton(buttonText: "Spearch your Speaker", onPressFunction: null),

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
                          alignment: Alignment.topCenter,
                          width: MediaQuery.of(context).size.width * 0.90,
                          height: MediaQuery.of(context).size.height * 0.58,
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
                              final company =companies[index];
                              final nxt_talk = talks[index];
                              return ListTile(
                                leading:
                                CircleAvatar(
                                  backgroundImage: NetworkImage("https://sigarra.up.pt/feup/en/FOTOGRAFIAS_SERVICE.foto?pct_cod=231081"),),
                                title: Text(item,style: infoTitleStyle,),
                                onTap: () {
                                  print('CLICKED ON: ' + item);

                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => SpeakerUserPage(name: item, company: company, nextTalk: nxt_talk,)));
                                  new MapScreen();},
                              );
                            },
                          ),
                        ),
                      ])])));
  }
}

/// CURRENT BUGS -> speakersList is updated as user writes / deletes letters. But the Widget doesn't update its information.