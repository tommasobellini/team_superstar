

import 'package:SkeletonApp/Models/auth.dart';
import 'package:SkeletonApp/Pages/Photo.dart';
import 'package:SkeletonApp/Pages/auth.dart';
import 'package:SkeletonApp/Pages/BottomDraw.dart';
import 'package:SkeletonApp/Pages/map.dart';
import 'package:SkeletonApp/Pages/settings.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    switch (settings.name) {
      case '/HomePage':
        return MaterialPageRoute(builder: (_) => BottomDraw());
      case '/Map':
        return MaterialPageRoute(builder: (_) => Map());
      case '/Auth':
        return MaterialPageRoute(builder: (_) => AuthPage());
      case '/Settings':
        return MaterialPageRoute(builder: (_) => Settings());
      case '/Photo':
        return MaterialPageRoute(builder: (_) => Photo());
    }
  }
    static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}