import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_test/components/CustomRaisedButton.dart';
import 'package:flutter_app_test/components/constants.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_app_test/users.dart';


class SecondScreen extends StatefulWidget {

  SecondScreen({Key key}) : super(key: key);
  @override
  _SecondScreen createState() => new _SecondScreen();

}



class _SecondScreen extends State<SecondScreen> {

  static var geolocator = Geolocator();
  static var locationOptions = LocationOptions(accuracy: LocationAccuracy.best, distanceFilter: 1);


  StreamSubscription<Position> positionStream = geolocator.getPositionStream(
      locationOptions).listen(
          (Position position) => print(
          position == null ? 'Unknown' : position.latitude.toString() + ', ' +
              position.longitude.toString()));
  static Future<Position> position = geolocator.getCurrentPosition();
  Completer<GoogleMapController> _controller = Completer();
  CameraPosition user = CameraPosition(target: LatLng(feup_loc.elementAt(0), feup_loc.elementAt(1)), zoom: 17);
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: colorPallete[900],
        body: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new SpearchLogo(),


              new Container(
                  height:MediaQuery.of(context).size.height*0.5,
                  child:
                  GoogleMap(
                    mapType: MapType.hybrid,
                    initialCameraPosition: user,
                    onMapCreated: (GoogleMapController controller){
                      _controller.complete(controller);
                    },
                  )
              )
              // add new Widgets here.
            ])
    ) ;

  }


}


Position getposition(){
  Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high) as Position;
}

