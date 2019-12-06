import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test/components/CustomRaisedButton.dart';
import 'package:flutter_app_test/components/constants.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_app_test/users.dart';
import 'package:flutter_app_test/UserPage.dart';
import 'package:flutter_app_test/MapScreen.dart';

const thisblue = Color(0xFF243470);


class SearchScreen_event extends StatefulWidget {

  SearchScreen_event({Key key}) : super(key: key);
  @override
  _SearchScreen_event createState() => new _SearchScreen_event();

}
List userList =[];


class _SearchScreen_event extends State<SearchScreen_event> {


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

                        new SimpleFlatButton(buttonText: "Spearch your Contacts", onPressFunction: null),
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
                            itemCount: palestra.length,
                            itemBuilder: (context, index) {
                              final item = palestra[index];
                              final room = palestra[index][0];
                              //final nxt_talk = talks[index];
                              return Container(
                                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width*0.8,

                                child:
                                new Stack(
                                    children: <Widget>[
                                      new Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: <Widget>[

                                          new Text("Subject:",
                                              style: subTitleStyle),
                                          new Container(
                                            color: colorPallete[800],
                                            padding: EdgeInsets.all(3),
                                            width: MediaQuery.of(context).size.width*0.8,
                                            child:
                                            new Text(item[0],style: infoTitleStyle),
                                          )
                                          ,
                                          new Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01)),

                                          new Text("Location:",style: subTitleStyle),
                                          new Container(
                                            color: colorPallete[800],
                                            padding: EdgeInsets.all(3),
                                            width: MediaQuery.of(context).size.width*0.8,
                                            child:
                                            new Text(item[2],style: infoTitleStyle),
                                          ),

                                        ],
                                      )]),
                              );
                            },
                          ),
                        ),
                      ])])));
  }

  getUser(item){
    for(var x in users){
      if(x.contains(item))
        return x;
    }
  }


}