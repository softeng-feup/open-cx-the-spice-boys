import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_app_test/components/CustomRaisedButton.dart';
import 'package:flutter_app_test/components/constants.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_app_test/users.dart';


class Map2 extends StatelessWidget {
  final double lat;
  final double long;
  final String name;

  Map2({Key key, @required this.lat, @required this.long, @required this.name}) : super(key: key);
  @override


  static var geolocator = Geolocator();
  static var locationOptions = LocationOptions(accuracy: LocationAccuracy.best, distanceFilter: 1);


  StreamSubscription<Position> positionStream = geolocator.getPositionStream(
      locationOptions).listen( (Position position) => print(
      position == null ? 'Unknown' : position.latitude.toString() + ', ' +
          position.longitude.toString()));
  static Future<Position> position = geolocator.getCurrentPosition();
  Completer<GoogleMapController> _controller = Completer();

  CameraPosition user = CameraPosition(target: LatLng(feup_loc.elementAt(0), feup_loc.elementAt(1)), zoom: 17);

  Set<Marker> markers = Set();

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

                        new SpearchLogo(),

                        new Container(
                            height:MediaQuery.of(context).size.height*0.70,
                            child:
                            GoogleMap(
                              mapType: MapType.hybrid,
                              initialCameraPosition: user,
                              markers: markers,

                              onMapCreated: (GoogleMapController controller){
                                print("map ready");
                                // ADD TARGETS
                                goToFriend();

                                _controller.complete(controller);



                              },
                            )
                        )
                        // add new Widgets here.
                      ]))]))
    ) ;
  }

  void afterFirstLayout(BuildContext context) {
    // Calling the same function "after layout" to resolve the issue.
    //TODO
   ;
  }


  Future <void> goToFriend() async{

//    sleep(const Duration(seconds:1));
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(lat, long), zoom: 18)
    ));
    Marker res = Marker(
      markerId: MarkerId(name),
      infoWindow: InfoWindow(
          title: name),
      //position: LatLng(lat, long)
        position: LatLng(41.1783,-8.5964)
    );
    markers.add(res);
    // Add marker to GMAP.
  }

}


Position getposition(){
  Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high) as Position;
}

 //URRENT BUGS -> speakersList is updated as user writes / deletes letters. But the Widget doesn't update its information.