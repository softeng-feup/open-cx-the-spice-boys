import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_test/components/CustomRaisedButton.dart';
import 'package:flutter_app_test/components/constants.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_app_test/users.dart';


class SearchScreen_person extends StatefulWidget {

  SearchScreen_person({Key key}) : super(key: key);
  @override
  _SearchScreen_person createState() => new _SearchScreen_person();

}



class _SearchScreen_person extends State<SearchScreen_person> {

  static var geolocator = Geolocator();
  static var locationOptions = LocationOptions(accuracy: LocationAccuracy.best, distanceFilter: 1);
  static var user_pos = [];

  StreamSubscription<Position> positionStream = geolocator.getPositionStream(
      locationOptions).listen(
          (Position position) => {user_pos.add(position.latitude),
        user_pos.add(position.longitude)});

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
              new Image.asset('assets/images/mainLogo.png', fit: BoxFit.scaleDown)

              ,

              SizedBox(
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


  void addPosition(Position position){
    user_pos.add(position.latitude);
    user_pos.add(position.longitude);
  }
}


Position getposition(){
  Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high) as Position;
}
