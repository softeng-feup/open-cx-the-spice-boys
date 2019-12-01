import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_test/components/CustomRaisedButton.dart';
import 'package:flutter_app_test/components/constants.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_app_test/users.dart';


class Map2 extends StatefulWidget {
//  final double lat;
//  final double long;

  Map2({Key key, /*@required this.lat, @required this.long*/}) : super(key: key);
  @override
  _Map2 createState() => new _Map2();

}



class _Map2 extends State<Map2> {

  static var geolocator = Geolocator();
  static var locationOptions = LocationOptions(accuracy: LocationAccuracy.best, distanceFilter: 1);


  StreamSubscription<Position> positionStream = geolocator.getPositionStream(
      locationOptions).listen( (Position position) => print(
      position == null ? 'Unknown' : position.latitude.toString() + ', ' +
          position.longitude.toString()));
  static Future<Position> position = geolocator.getCurrentPosition();
  Completer<GoogleMapController> _controller = Completer();
  CameraPosition user = CameraPosition(target: LatLng(feup_loc.elementAt(0), feup_loc.elementAt(1)), zoom: 17);
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

                        new SpearchLogo(),

                        new Container(
                            height:MediaQuery.of(context).size.height*0.70,
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
                      ]))]))
    ) ;

  }
}


Position getposition(){
  Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high) as Position;
}

URRENT BUGS -> speakersList is updated as user writes / deletes letters. But the Widget doesn't update its information.