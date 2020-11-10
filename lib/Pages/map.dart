


import 'dart:async';
import 'package:SkeletonApp/Models/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map extends StatefulWidget {
  Map({Key key}) : super(key: key);

  @override 
  _MapState createState() => _MapState();

  
}

class _MapState extends State<Map>{

    Completer<GoogleMapController> _controller = Completer();
    static const LatLng _center = const LatLng(45.521563, -122.677433);
    
    
    void _onMapCreated(GoogleMapController controller) {
      print("++++++++++++++++++++++++++++++++++++++++++++++++");
    _controller.complete(controller);
    }


  @override 
  // TODO: implement context
  Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
    appBar: AppBar(
    
    title: Center(
      child: Text("Maps")),
    backgroundColor: Colors.green[700],
    ),
    drawer: DrawerWidget(),
      body: GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
      target: _center,
      zoom: 11.0,
),
),
),
);
  
  }
}