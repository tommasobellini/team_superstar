
import 'package:SkeletonApp/Controllers/PhotoController.dart';
import 'package:SkeletonApp/Controllers/SettingsController.dart';
import 'package:SkeletonApp/Models/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class Photo extends StatefulWidget{
  Photo({Key key}) : super(key: key);


  @override
  _PhotoState createState() => _PhotoState();

}

class _PhotoState extends StateMVC<Photo> {
  PhotoController _con;
  _PhotoState() : super(PhotoController()) {
    _con = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
    body:
      //Create Photo...
      Center(child: Text("Photo")),
    );
    throw UnimplementedError();
  }
}
