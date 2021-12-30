import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:flutter/services.dart';

class Mapps extends StatefulWidget {
  @override
  _MappsState createState() => _MappsState();
}

class _MappsState extends State<Mapps> {

  @override
  void initState() {
    // TODO: implement initState
    //SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    SystemChrome.setEnabledSystemUIOverlays([]);


  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: AppBar(title: Text("welcome"),),body: GoogleMap(mapType: MapType.hybrid,initialCameraPosition: CameraPosition(target: LatLng(31.163294, 31.670611))),));
  }
}

