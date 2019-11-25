import 'package:flutter/material.dart';
import 'package:flutter_app_test/MapScreen.dart';
import 'package:flutter_app_test/components/CustomRaisedButton.dart';
import 'package:flutter_app_test/components/constants.dart';
import 'package:photo_view/photo_view.dart';

class UserPage extends StatefulWidget {
  UserPage({Key key}) : super(key: key);
  @override
  _UserPage createState() => new _UserPage();
}


/// Displays user Info ->
class _UserPage extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: colorPallete[900],
        body: SingleChildScrollView(
        child: Stack(
        children: <Widget>[
        new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[


              new Material(
                  child: InkWell(
                    onTap: () { Navigator.pop(context);},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width * 0.03),
                      alignment: Alignment.topLeft,
                      color: colorPallete[900],
                      child: Image.asset('assets/images/backArrow.png',fit: BoxFit.scaleDown,
                          width: (MediaQuery.of(context).size.height * 0.05), height: (MediaQuery.of(context).size.height* 0.05)),
                    ),
                  )
              ),


              //TODO -> Add a button to "Add to Contacts here"



              new Padding(padding:  EdgeInsets.all(MediaQuery.of(context).size.width*0.01)),


              new Text(
                  "User1",
                  textAlign: TextAlign.center,
                  style: subTitleStyle),

              new Padding(padding:  EdgeInsets.all(MediaQuery.of(context).size.width*0.01)),


              new Container(
                  color: colorPallete[700],
                  width: MediaQuery.of(context).size.width *0.6,
                  height: MediaQuery.of(context).size.width *0.6,
                  child:
                          PhotoView(
                          imageProvider: NetworkImage("https://sigarra.up.pt/feup/en/FOTOGRAFIAS_SERVICE.foto?pct_cod=231081"),
                          initialScale: PhotoViewComputedScale.contained,
                          )
              ),

              new Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01)),


              /// Information Container
              new Container(
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

                     new Text("Full Name:",
                     style: subTitleStyle),
                     new Container(
                       color: colorPallete[800],
                       padding: EdgeInsets.all(3),
                       width: MediaQuery.of(context).size.width*0.8,
                       child:
                     new Text("Full sName:",style: infoTitleStyle),
                     )
,
                     new Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01)),

                     new Text("Full Name:",style: subTitleStyle),
                         new Container(
                           color: colorPallete[800],
                           padding: EdgeInsets.all(3),
                           width: MediaQuery.of(context).size.width*0.8,
                           child:
                           new Text("Full sName:",style: infoTitleStyle),
                         )
                   ],
                 )]),
              ),


              new Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.04)),


              new SimpleButton( onPressFunction: null, buttonText: "Show on Map"),


            ])])));
  }


  void goToSearchSpeaker()
  {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MapScreen()));
  }
}
