import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_test/components/CustomRaisedButton.dart';
import 'components/constants.dart';
import 'package:photo_view/photo_view.dart';

class MapScreen extends StatefulWidget {
  MapScreen({Key key}) : super(key: key);
  @override
  _MapScreen createState() => new _MapScreen();
}


/// TODO -> Receive Position parameters: User position + Target position. Possibly refreshing information every 3 - 5 seconds.
/// TODO -> Add Points in image ( overlap over Map or change the image with some image editor ) for position + target.

/// Map view.
class _MapScreen extends State<MapScreen> {
  @override
    Widget build(BuildContext context) {
      return new Scaffold(
          backgroundColor: colorPallete[900],
          body: SingleChildScrollView(
              child:
              new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  child:
                      new SpearchLogo() ),

              new Container(
                  width: MediaQuery.of(context).size.width ,
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: PhotoView(
                        imageProvider: AssetImage("assets/images/feupMAP.png"),
                        minScale: PhotoViewComputedScale.contained * 0.6,
                        initialScale: PhotoViewComputedScale.contained,
                        maxScale: PhotoViewComputedScale.covered * 2.5,
                        enableRotation: false,
                        )

              )
              ])
              ));
  }
//  FUnctions
  }
