import 'package:flutter/material.dart';
import 'package:flutter_app_test/MapScreen.dart';
import 'package:flutter_app_test/components/CustomRaisedButton.dart';
import 'package:flutter_app_test/components/constants.dart';
import 'package:photo_view/photo_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app_test/users.dart';
import 'package:flutter_app_test/Map2.dart';



class UserPage extends StatelessWidget {
  final String name;

  UserPage({Key key, @required this.name}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: colorPallete[900],
        body: SingleChildScrollView(
            child: Stack(
                children: <Widget>[
                  new SafeArea(child:
                  new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[

                        new Row(
                            children: <Widget>[
                              new InkWell(
                                onTap: () { Navigator.pop(context);},
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width * 0.03),
                                  alignment: Alignment.topLeft,
                                  color: colorPallete[900],
                                  child: Image.asset('assets/images/backArrow.png',fit: BoxFit.scaleDown,
                                      width: (MediaQuery.of(context).size.height * 0.05), height: (MediaQuery.of(context).size.height* 0.05)),
                                ),
                              ),

                              new AddToContacts()
                            ]),

                        //TODO -> Add a button to "Add to Contacts here"

//              new Padding(padding:  EdgeInsets.all(MediaQuery.of(context).size.width*0.01)),
//
//
//                  new Text(
//                      "User1",
//                      textAlign: TextAlign.center,
//                      style: subTitleStyle),


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
                                      new Text( name ,style: infoTitleStyle),
                                    )
                                    ,
                                    new Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01)),

                                    new Text("Company:",style: subTitleStyle),
                                    new Container(
                                      color: colorPallete[800],
                                      padding: EdgeInsets.all(3),
                                      width: MediaQuery.of(context).size.width*0.8,
                                      child:
                                      new Text("[PLACEHOLDER]",style: infoTitleStyle),
                                    )
                                  ],
                                )]),
                        ),

                        new Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.04)),

//                        new SimpleButton(
//                            buttonText: "Show on Map",
//                            onPressFunction: () {    Navigator.push(
//                                context, MaterialPageRoute(builder: (context) => MapScreen()));}

                        new SimpleButton(
                            buttonText: "Show on Map",
                            onPressFunction: () {    Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Map2(lat: 41.17765749358881, long: -8.59574824645452, name: name)));}

                        ),


                      ]))])));
  }

//
//  void goToSearchSpeaker()
//  {
//    Navigator.push(
//        context, MaterialPageRoute(builder: (context) => MapScreen()));
//  }
}


/// Add to Contacts button
class AddToContacts extends StatefulWidget {
  @override
  _AddToContacts createState() => _AddToContacts();
}

class _AddToContacts extends State<AddToContacts>
{
  bool pressAttention = false;
  @override
  Widget build(BuildContext context) {

    // The GestureDetector wraps the button.
    return Container(
        width: MediaQuery.of(context).size.width*0.88,
        child:
        GestureDetector(
            onTap: () {
              //  setState( ()  )       // not used might remove later
            },
            // The custom button
            child:
            Align(
                alignment: Alignment.topRight,
                child:
                new Container(
                    margin: const EdgeInsets.symmetric(vertical: 9.0,),
                    height: MediaQuery.of(context).size.height *0.063,
                    width: MediaQuery.of(context).size.width *0.48,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: pressAttention ? colorPallete[100]: colorPallete[200], //                   <--- border color
                        width: MediaQuery.of(context).size.height *0.009,
                      ),
                    ),
                    child:
                    new RaisedButton(
                        key: null,
                        color: const Color(0xFFe0e0e0),
                        onPressed: () => setState(() => pressAttention = !pressAttention),
                        child: new Text(
                          'Add To Contacts',
                          style: new TextStyle(
                              fontSize: 18.0,
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w700,
                              fontFamily: FONTFAMILY),
                        ))))));
  }
}