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
List userList =[];


class _SearchScreen_person extends State<SearchScreen_person> {

  static var geolocator = Geolocator();
  static var locationOptions = LocationOptions(accuracy: LocationAccuracy.best, distanceFilter: 1);
  static var user_pos = [feup_loc.elementAt(0), feup_loc.elementAt(1)];

  StreamSubscription<Position> positionStream = geolocator.getPositionStream(
      locationOptions).listen(
          (Position position) => {user_pos.insert(0, position.latitude),
        user_pos.insert(1, position.longitude)});

  static Future<Position> position = geolocator.getCurrentPosition();
  Completer<GoogleMapController> _controller = Completer();
  CameraPosition user = CameraPosition(target: LatLng(user_pos.elementAt(0), user_pos.elementAt(1)), zoom: 17);
  CameraPosition final_user;

  final controller = TextEditingController();

  /// Function that displays the possible speakers when as users writes each letter
  onChangeSpeakerSearch() {
    controller.text;
    userList = [];
    for(final userr in users)
    {
      String username = userr[0];
        if (username.toUpperCase().contains(controller.text.toUpperCase())) {
          userList.add(userr);

      }
    }

    for(final i in userList)  // DEBUG.
        {
      debugPrint('DEBUG' + i[0]);
      CameraPosition _final_user = CameraPosition(target: LatLng(i[1], i[2]), zoom: 17);
      final_user = _final_user;
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

  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: colorPallete[900],
        body: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              SizedBox(
        height: MediaQuery.of(context).size.height*0.15,
      child:
              new TextField(
            autofocus: true,
              controller: controller,
              style: subTitleStyle,
            )
              )
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
