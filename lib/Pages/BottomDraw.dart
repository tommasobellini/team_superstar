
import 'package:SkeletonApp/Controllers/HomeController.dart';
import 'package:SkeletonApp/Models/Drawer.dart';
import 'package:SkeletonApp/Pages/HomeWidget.dart';
import 'package:SkeletonApp/Pages/Photo.dart';
import 'package:SkeletonApp/Pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';


class BottomDraw extends StatefulWidget {
  @override
  _BottomDrawState createState() => new _BottomDrawState();
}

class _BottomDrawState extends State<BottomDraw> {
  int _pageIndex = 0;
  PageController _pageController;

  List<Widget> tabPages = [
    HomeWidget(),
    Settings(),
    Photo(),
  ];

  @override
  void initState(){
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Insert the app title
        title: Text("App_Title"),
      ),
      drawer: DrawerWidget(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: onTabTapped,
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem( icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("Settings")),
          BottomNavigationBarItem(icon: Icon(Icons.photo), title: Text("Photo")),
        ],

      ),
      body: PageView(
        children: tabPages,
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
    );
  }
  void onPageChanged(int page) {
    setState(() {
      this._pageIndex = page;
    });
  }

  void onTabTapped(int index) {
    this._pageController.animateToPage(index,duration: const Duration(milliseconds: 500),curve: Curves.easeInOut);
  }
}
