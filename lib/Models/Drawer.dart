import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:SkeletonApp/routeGenerator.dart';

class DrawerWidget extends StatefulWidget{
@override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget>{

@override
  Widget build(BuildContext context) {
    return Drawer(
  
  child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      DrawerHeader(
        child: Text('SkeletonApp'),
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      ),

      ListTile(
        onTap: () {
          Navigator.of(context).pushNamed('/HomePage');
        },
        leading: Icon(
              Icons.home,
              color: Theme.of(context).focusColor.withOpacity(1),
            ),
            title: Text(
              'HOME',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey
              ),
            ),
      ),

      ListTile(
        onTap: () {
          // Navigator.of(context).pushNamed('/settings');
        },
        leading: Icon(
              Icons.settings,
              color: Theme.of(context).focusColor.withOpacity(1),
            ),
            title: Text(
              'SETTINGS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey
              ),
            ),
      ),

     ListTile(
        onTap: () {
//    CREARE IL ROUTE NAVIGATOR DEL BOTTOM DRAW
        },
        leading: Icon(
              Icons.photo,
              color: Theme.of(context).focusColor.withOpacity(1),
            ),
            title: Text(
              'PHOTO',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey
              ),
            ),
      ),
      
    ],
  ),
);
}
}