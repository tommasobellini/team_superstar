
import 'package:SkeletonApp/Controllers/SettingsController.dart';
import 'package:SkeletonApp/Models/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class Settings extends StatefulWidget{
  Settings({Key key}) : super(key: key);


  @override
  _SettingsState createState() => _SettingsState();

}

class _SettingsState extends StateMVC<Settings> {
  SettingsController _con;
  _SettingsState() : super(SettingsController()) {
    _con = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
    body:
      //Create Settings...
      Center(child: Text("Settings")),
    );
    throw UnimplementedError();
  }
}
